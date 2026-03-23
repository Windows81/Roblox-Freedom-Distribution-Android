.class public Lcom/roblox/client/signup/multiscreen/e/b;
.super Landroidx/lifecycle/u;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/u;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->a:I

    .line 18
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->b:I

    .line 19
    iput v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/e/b;->a:I

    const-string p1, "birthdayYear"

    .line 31
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/e/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "birthdayScreen"

    .line 49
    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "birthdayScreen"

    .line 45
    invoke-static {v0, p1, p2, p3}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Lcom/roblox/client/signup/multiscreen/a/a;
    .locals 4

    .line 22
    new-instance v0, Lcom/roblox/client/signup/multiscreen/a/a;

    iget v1, p0, Lcom/roblox/client/signup/multiscreen/e/b;->a:I

    iget v2, p0, Lcom/roblox/client/signup/multiscreen/e/b;->b:I

    iget v3, p0, Lcom/roblox/client/signup/multiscreen/e/b;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/a/a;-><init>(III)V

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/e/b;->b:I

    const-string p1, "birthdayMonth"

    .line 36
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/e/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "birthdayScreen"

    const-string v1, "submit"

    .line 58
    invoke-static {v0, p1, v1}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/roblox/client/signup/multiscreen/e/b;->c:I

    const-string p1, "birthdayDay"

    .line 41
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/multiscreen/e/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/roblox/client/signup/multiscreen/e/b;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 2

    const-string v0, "continue"

    .line 53
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/e/b;->a(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-VAppSignup-ContinueClicked"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "birthdayScreen"

    .line 62
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    const-string v1, "Android-VAppSignup-BirthdayScreenLoaded"

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    new-instance v2, Lcom/roblox/client/datastructures/NameValuePair;

    iget v3, p0, Lcom/roblox/client/signup/multiscreen/e/b;->c:I

    iget v4, p0, Lcom/roblox/client/signup/multiscreen/e/b;->b:I

    iget v5, p0, Lcom/roblox/client/signup/multiscreen/e/b;->a:I

    .line 71
    invoke-static {v3, v4, v5}, Lcom/roblox/client/ae/e;->a(III)I

    move-result v3

    const/16 v4, 0xd

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "isOver13"

    invoke-direct {v2, v3, v1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "birthDateEntered"

    const-string v2, "birthdayScreen"

    .line 73
    invoke-static {v1, v2, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
