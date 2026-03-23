.class public Lcom/roblox/client/hybrid/a/h;
.super Lcom/roblox/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/hybrid/a/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/roblox/client/hybrid/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/hybrid/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const-string v0, "Push"

    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "pushPermissionTrigger"

    new-instance v1, Lcom/roblox/client/hybrid/a/h$a;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/hybrid/a/h$a;-><init>(Lcom/roblox/client/hybrid/a/h;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/hybrid/a/h;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    .line 29
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/roblox/client/hybrid/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/roblox/client/pushnotification/q;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/q;-><init>()V

    .line 62
    const-string v1, "AUTHORIZE_PUSH_NOTIFICATIONS_FOR_USER"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/roblox/client/pushnotification/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/hybrid/a/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/roblox/client/hybrid/a/h;->a(Landroid/content/Context;)V

    return-void
.end method
