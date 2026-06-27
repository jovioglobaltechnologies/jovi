import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseProvider = Provider<SupabaseClient>((ref) => Supabase.instance.client);

final authStateProvider = StreamProvider<User?>((ref) =>
  ref.watch(supabaseProvider).auth.onAuthStateChange.map((e) => e.session?.user));

final tenantProvider = FutureProvider<Map<String, dynamic>?>((ref) async {
  final user = ref.watch(authStateProvider).valueOrNull;
  if (user == null) return null;
  final sb = ref.watch(supabaseProvider);
  final tu = await sb.from('tenant_users').select('tenant_id').eq('user_id', user.id).single();
  return await sb.from('tenants').select('*').eq('id', tu['tenant_id']).single();
});
