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

    .line 15
    const-class v0, Lcom/roblox/client/hybrid/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/hybrid/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Push"

    .line 24
    invoke-direct {p0, v0}, Lcom/roblox/a/c;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/roblox/client/hybrid/a/h$a;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/hybrid/a/h$a;-><init>(Lcom/roblox/client/hybrid/a/h;Landroid/content/Context;)V

    const-string p1, "pushPermissionTrigger"

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/hybrid/a/h;->a(Ljava/lang/String;Lcom/roblox/a/c$a;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/roblox/client/hybrid/a/h;->a:Ljava/lang/String;

    return-object v0
.end method
