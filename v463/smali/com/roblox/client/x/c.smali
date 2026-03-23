.class public Lcom/roblox/client/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lcom/roblox/client/x/c;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 3

    const-string v0, "EnableLuaChatV4"

    .line 28
    invoke-static {v0}, Lcom/roblox/client/b;->a(Ljava/lang/String;)Lcom/roblox/client/m/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/roblox/client/m/a;->b()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLuaChatEnabled() using override:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/roblox/client/m/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "luaApp.config"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v0}, Lcom/roblox/client/m/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/roblox/client/x/c;->a:Z

    .line 35
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 36
    invoke-static {}, Lcom/roblox/client/b;->as()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Lcom/roblox/client/b;->aQ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 41
    :cond_3
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 43
    :cond_4
    invoke-static {}, Lcom/roblox/client/x/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 45
    :cond_5
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/roblox/client/b;->ar()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    return v1

    .line 46
    :cond_7
    :goto_0
    sget-boolean v0, Lcom/roblox/client/x/c;->a:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/roblox/client/b;->ag()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public static b()Z
    .locals 3

    .line 53
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {}, Lcom/roblox/client/b;->aQ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 55
    :cond_2
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    invoke-static {}, Lcom/roblox/client/b;->ai()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1

    .line 57
    :cond_5
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    invoke-static {}, Lcom/roblox/client/b;->ah()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2
.end method

.method public static c()Z
    .locals 3

    .line 64
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/roblox/client/b;->aQ()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 66
    :cond_2
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-static {}, Lcom/roblox/client/b;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1

    .line 68
    :cond_5
    invoke-static {}, Lcom/roblox/client/u;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    invoke-static {}, Lcom/roblox/client/b;->aj()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2
.end method

.method public static d()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/roblox/client/x/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/x/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "rbxasset://places/Mobile.rbxl"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "LuaAppStarterScript"

    return-object v0
.end method

.method public static g()V
    .locals 3

    const-string v0, "AppBridgeRewrite"

    const/4 v1, 0x1

    .line 88
    invoke-static {v0, v1}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeSetFFlag(Ljava/lang/String;Z)V

    .line 92
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    const-string v2, "AppBridgeStartupController"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->cv()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetFFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    sput-boolean v1, Lcom/roblox/client/x/c;->b:Z

    .line 94
    invoke-static {v2, v1}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeSetFFlag(Ljava/lang/String;Z)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retrieveNativeFlags: NewStartup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/roblox/client/x/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luaApp.config"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UsingSendMeasureBatch2"

    .line 97
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetFFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/roblox/client/x/c;->c:Z

    const-string v0, "BrowserServiceForAllPlatforms"

    .line 98
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetFFlag(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/roblox/client/x/c;->d:Z

    return-void
.end method

.method public static h()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/roblox/client/x/c;->b:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    .line 106
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeIsLuaLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j()Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/roblox/client/x/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cA()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static k()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/roblox/client/x/c;->c:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    .line 118
    sget-boolean v0, Lcom/roblox/client/x/c;->d:Z

    return v0
.end method

.method public static m()Z
    .locals 1

    const-string v0, "EnableReturnKeyPressedEvent"

    .line 122
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetFFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    const-string v0, "EnableAppPolicyDefaultsFile"

    .line 126
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeGetFFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
