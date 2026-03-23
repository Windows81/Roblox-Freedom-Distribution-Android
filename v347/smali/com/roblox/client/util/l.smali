.class public Lcom/roblox/client/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ld/l;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/l",
            "<",
            "Lb/ac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 15
    const-string v1, ""

    .line 17
    :try_start_0
    invoke-virtual {p0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/ac;

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ld/l;->e()Lb/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Ld/l;->e()Lb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lb/ac;->g()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
