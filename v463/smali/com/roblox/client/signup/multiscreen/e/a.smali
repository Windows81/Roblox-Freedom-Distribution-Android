.class public Lcom/roblox/client/signup/multiscreen/e/a;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/signup/multiscreen/e/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/signup/multiscreen/a/a;

.field private b:I

.field private c:Lcom/roblox/client/g/a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/g/a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/a;->c:Lcom/roblox/client/g/a;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/e/a;->b:I

    return-void
.end method

.method public a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/roblox/client/g/a$a;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/a;->c:Lcom/roblox/client/g/a;

    new-instance v1, Lcom/roblox/client/g/c;

    invoke-direct {v1, p3, p4}, Lcom/roblox/client/g/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, p5}, Lcom/roblox/client/g/a;->a(Landroid/app/Activity;ILcom/roblox/client/g/c;Lcom/roblox/client/g/a$a;)V

    return-void
.end method

.method public a(Lcom/roblox/client/signup/multiscreen/a/a;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/a;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/a;->c:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->a()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/e/a;->c:Lcom/roblox/client/g/a;

    invoke-interface {p1}, Lcom/roblox/client/g/a;->b()V

    :goto_0
    return-void
.end method

.method public b()Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/a;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/e/a;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 34
    iget v0, v0, Lcom/roblox/client/signup/multiscreen/a/a;->c:I

    iget-object v2, p0, Lcom/roblox/client/signup/multiscreen/e/a;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v2, v2, Lcom/roblox/client/signup/multiscreen/a/a;->b:I

    iget-object v3, p0, Lcom/roblox/client/signup/multiscreen/e/a;->a:Lcom/roblox/client/signup/multiscreen/a/a;

    iget v3, v3, Lcom/roblox/client/signup/multiscreen/a/a;->a:I

    invoke-static {v0, v2, v3}, Lcom/roblox/client/ae/e;->a(III)I

    move-result v0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public d()Z
    .locals 2

    .line 50
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/e/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/e/a;->c()Z

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
