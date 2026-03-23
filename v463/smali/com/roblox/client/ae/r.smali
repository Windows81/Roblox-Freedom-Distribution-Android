.class public Lcom/roblox/client/ae/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    return-void

    .line 29
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/d/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v1

    iget v0, v0, Lcom/google/android/gms/common/i;->a:I

    .line 39
    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/common/e;->a()Lcom/google/android/gms/common/e;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/common/j;->a()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
