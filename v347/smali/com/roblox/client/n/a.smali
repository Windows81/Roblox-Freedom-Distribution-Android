.class public Lcom/roblox/client/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/roblox/client/n/a;->a:Z

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 14
    sput-boolean p0, Lcom/roblox/client/n/a;->a:Z

    .line 15
    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-static {}, Lcom/roblox/client/b;->aN()Lcom/roblox/client/b$a;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/roblox/client/b$a;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    const-string v3, "luaApp.config"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLuaChatEnabled() using override:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/roblox/client/b$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v2}, Lcom/roblox/client/b$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/roblox/client/n/a;->a:Z

    .line 25
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/roblox/client/b;->bc()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    :cond_1
    :goto_0
    return v1

    .line 29
    :cond_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/roblox/client/b;->bb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_3
    sget-boolean v0, Lcom/roblox/client/n/a;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/roblox/client/b;->aM()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/roblox/client/b;->aO()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-static {}, Lcom/roblox/client/n/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-static {}, Lcom/roblox/client/b;->aQ()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 49
    :cond_1
    :goto_0
    return v0

    .line 44
    :cond_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-static {}, Lcom/roblox/client/b;->aP()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/roblox/client/n/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-static {}, Lcom/roblox/client/b;->aT()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 61
    :cond_1
    :goto_0
    return v0

    .line 56
    :cond_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-static {}, Lcom/roblox/client/b;->aR()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/abtesting/a;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcom/roblox/client/b;->aS()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->aU()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    .line 66
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/roblox/client/n/a;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 65
    goto :goto_0

    :cond_3
    move v0, v1

    .line 66
    goto :goto_1
.end method
