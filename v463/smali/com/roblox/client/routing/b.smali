.class public Lcom/roblox/client/routing/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 10
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ParseRouteCalled"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ErrorInvalidJson"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const-string v0, "appRouter"

    const-string v1, "invalidJson"

    .line 15
    invoke-static {v0, v1, p1}, Lcom/roblox/client/p;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ErrorNoParamsFoundForEvent"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". URL:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appRouter"

    const-string v0, "noParamsFoundForEvent"

    invoke-static {p2, v0, p1}, Lcom/roblox/client/p;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-RouteHandledNatively"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ErrorNoRoutesParsed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const-string v0, "appRouter"

    const-string v1, "noRoutesParsed"

    .line 24
    invoke-static {v0, v1, p1}, Lcom/roblox/client/p;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ErrorIncorrectParamName"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". URL:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appRouter"

    const-string v0, "incorrectParamName"

    invoke-static {p2, v0, p1}, Lcom/roblox/client/p;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-PostEventWithParams"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-ErrorIncorrectParamValue"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". URL:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "appRouter"

    const-string v0, "incorrectParamValue"

    invoke-static {p2, v0, p1}, Lcom/roblox/client/p;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-PostEventWithoutParams"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-AppRouter-RouteHandledByLua"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method
