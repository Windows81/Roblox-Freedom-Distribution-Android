.class public Lcom/roblox/client/jni/NativeUserJavaInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlternateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method private static getContext()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/roblox/client/FragmentGlView;->getSingleton()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    return-object v0
.end method

.method public static getIsUnder13()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->g()Z

    move-result v0

    return v0
.end method

.method public static getMembershipType()I
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->k()I

    move-result v0

    return v0
.end method

.method public static getUserId()J
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
