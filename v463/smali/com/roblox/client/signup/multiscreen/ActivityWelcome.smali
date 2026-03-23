.class public Lcom/roblox/client/signup/multiscreen/ActivityWelcome;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/multiscreen/c/f$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private q()V
    .locals 2

    const/4 v0, -0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->finish()V

    .line 57
    sget v0, Lcom/roblox/client/o$a;->slide_down_short:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public n()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->q()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 24
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/roblox/client/o$g;->activity_welcome_screen:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->setContentView(I)V

    .line 28
    sget v0, Lcom/roblox/client/o$f;->welcome_screen_toolbar_include:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 31
    sget v1, Lcom/roblox/client/o$c;->activityBackground:I

    invoke-static {p0, v1}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->c(Z)V

    .line 39
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->b(Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->a(Z)V

    :cond_1
    if-nez p1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->j()Landroidx/fragment/app/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$f;->welcome_screen_container:I

    .line 48
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/ad/c;->g()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/roblox/client/ad/c;->h()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v3

    .line 47
    invoke-static {v1, v2, v3}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/signup/multiscreen/a/a;)Lcom/roblox/client/signup/multiscreen/c/f;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/k;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()I

    :cond_2
    return-void
.end method

.method public p()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/roblox/client/signup/multiscreen/ActivityWelcome;->q()V

    return-void
.end method
