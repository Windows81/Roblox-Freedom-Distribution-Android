.class public Ldebuggy;
.super Ljava/lang/Object;
.source "debuggy"

.method public static print(Ljava/lang/Object;)V
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

.method public static print(I)V
    .locals 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0

    invoke-static {v0}, Ldebuggy;->print(Ljava/lang/Object;)V

    return-void
.end method

# https://stackoverflow.com/a/20880390/6879778
.method public static printStackTrace()V
    .locals 7

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 75
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 78
    return-void

    .line 75
    :cond_0
    aget-object v0, v1, v2

    .line 76
    const/4 v4, 0x3
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    move-result-object v6
    add-int/lit8 v4, v4, -0x1
    aput-object v6, v5, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
    move-result-object v6
    add-int/lit8 v4, v4, -0x1
    aput-object v6, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    add-int/lit8 v4, v4, -0x1
    aput-object v6, v5, v4

    const-string v4, "%02d  ||  Class name :: %s  || method name :: %s"
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-static {v5}, Ldebuggy;->print(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method