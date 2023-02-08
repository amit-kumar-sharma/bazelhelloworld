def _create_user_greeting_file_impl(ctx):
    print(ctx.var)
    out = ctx.actions.declare_file("{}_greetings_for_{}".format(ctx.var.get("time_of_day","days"), ctx.attr.username))
    ctx.actions.write(
        output = out,
        content = "Hello {}!\n".format(ctx.attr.username),
    )
    return [DefaultInfo(files = depset([out]))]

create_user_greeting_file = rule(
    implementation = _create_user_greeting_file_impl,
    attrs = {
        "username": attr.string(),
    },
)
