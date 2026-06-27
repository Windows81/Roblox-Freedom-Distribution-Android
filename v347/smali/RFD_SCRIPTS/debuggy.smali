.class public Ldebuggy;
.super Ljava/lang/Object;
.source "debuggy"

.method public static show(Ljava/lang/Object;)V
    .locals 4

    # Checks if register p0 is null
    if-nez p0, :is_null
        const-string v1, "Nully Bully"
        goto :is_null_end
    :is_null

        # Converts param to string.
        invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
        move-result-object v1
    :is_null_end

    const-string v0, "UwU"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static show(I)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Ldebuggy;->show(Ljava/lang/Object;)V

    return-void
.end method