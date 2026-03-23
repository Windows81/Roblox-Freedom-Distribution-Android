.class public Lcom/roblox/engine/jni/user/NativeUserJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sImplementation:Lcom/roblox/engine/jni/user/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlternateName()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIsUnder13()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->b()Z

    move-result v0

    return v0
.end method

.method public static getMembershipType()I
    .locals 1

    .line 38
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->f()I

    move-result v0

    return v0
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTheme()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()J
    .locals 2

    .line 14
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    invoke-virtual {v0}, Lcom/roblox/engine/jni/user/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Lcom/roblox/engine/jni/user/a;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 9
    sput-object p0, Lcom/roblox/engine/jni/user/NativeUserJavaInterface;->sImplementation:Lcom/roblox/engine/jni/user/a;

    :cond_0
    return-void
.end method
