.class public final Lcom/roblox/client/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/roblox/client/w$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/roblox/client/d/b;-><init>(ZLcom/roblox/client/w$c;ILb/a/a/a;)V

    return-void
.end method

.method public constructor <init>(ZLcom/roblox/client/w$c;)V
    .locals 1

    const-string v0, "upgradeCheckResult"

    invoke-static {p2, v0}, Lb/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/roblox/client/d/b;->a:Z

    iput-object p2, p0, Lcom/roblox/client/d/b;->b:Lcom/roblox/client/w$c;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/roblox/client/w$c;ILb/a/a/a;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 8
    new-instance p2, Lcom/roblox/client/w$c;

    invoke-direct {p2}, Lcom/roblox/client/w$c;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/d/b;-><init>(ZLcom/roblox/client/w$c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/roblox/client/d/b;->a:Z

    return v0
.end method

.method public final b()Lcom/roblox/client/w$c;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/roblox/client/d/b;->b:Lcom/roblox/client/w$c;

    return-object v0
.end method
