test_that("tbt() | scalar test", {
    rlang::local_options(lifecycle_verbosity = "quiet")
    
    expect_equal(tbt(
        bt = hms::parse_hm("22:00"), gu = hms::parse_hm("07:00")
    ),
    lubridate::dhours(9)
    )

    expect_equal(tbt(
        bt = hms::parse_hm("02:00"), gu = hms::parse_hm("10:00")
    ),
    lubridate::dhours(8)
    )

    expect_equal(tbt(
        bt = hms::as_hms(NA), gu = hms::parse_hm("00:00")
    ),
    lubridate::as.duration(NA)
    )
})

test_that("tbt() | vector test", {
    rlang::local_options(lifecycle_verbosity = "quiet")
    
    expect_equal(tbt(
        bt = c(hms::parse_hm("23:30"), hms::parse_hm("03:15")),
        gu = c(hms::parse_hm("12:00"), hms::parse_hm("10:45"))
    ),
    c(lubridate::duration(45000), lubridate::duration(27000))
    )
})

test_that("tbt() | error test", {
    rlang::local_options(lifecycle_verbosity = "quiet")
    
    # assert_hms(bt, lower = hms::hms(0))
    expect_error(tbt(
        bt = 1, gu = hms::hms(1)
    ),
    "Assertion on 'bt' failed"
    )

    expect_error(tbt(
        bt = hms::hms(-1), gu = hms::hms(1)
    ),
    "Assertion on 'bt' failed"
    )

    # assert_hms(gu, lower = hms::hms(0))
    expect_error(tbt(
        bt = hms::hms(1), gu = 1
    ),
    "Assertion on 'gu' failed"
    )

    expect_error(tbt(
        bt = hms::hms(1), gu = hms::hms(-1)
    ),
    "Assertion on 'gu' failed"
    )

    # assert_identical(bt, gu, type = "length")
    expect_error(tbt(
        bt = hms::hms(1), gu = c(hms::hms(1), hms::hms(1)))
    )
})
