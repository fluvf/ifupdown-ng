PATH="$(atf_get_srcdir)/..:$PATH"
FIXTURES="$(atf_get_srcdir)/fixtures"
EXECUTORS="$(atf_get_srcdir)/executors"

tests_init() {
	TESTS="$@"
	export TESTS
	for t ; do
		atf_test_case $t
	done
}

atf_init_test_cases() {
	for t in ${TESTS}; do
		atf_add_test_case $t
	done
}
