.class public Lcom/roblox/client/locale/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "rbx.locale"

    const-string p1, "context is null"

    .line 13
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Context passed to getStringValue() in DynamicStringUtils is null."

    .line 14
    invoke-static {p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {p0}, Lcom/roblox/client/locale/j;->a(Landroid/content/Context;)Lcom/roblox/client/locale/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/roblox/client/locale/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
