.class public Lcom/google/ads/interactivemedia/v3/impl/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/c/a/a;->c()Lcom/google/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/c/a/a;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
