.class public Lcom/roblox/client/landing/AboutActivity;
.super Lcom/roblox/client/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)Z
    .locals 2

    .line 47
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/j;->i()Lcom/roblox/client/j$a;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/roblox/client/j$a;->name()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/roblox/client/landing/AboutActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/j$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "64-bit"

    goto :goto_0

    :cond_1
    const-string v0, "32-bit"

    .line 57
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- Ver:892"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public static synthetic lambda$fznbMfPiYaRYKyCsX6L3OaVBJxk(Lcom/roblox/client/landing/AboutActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/roblox/client/landing/AboutActivity;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FragmentAbout"

    const-string v0, "onCreate()"

    .line 27
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget p1, Lcom/roblox/client/o$g;->fragment_about_app:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/AboutActivity;->setContentView(I)V

    .line 30
    sget p1, Lcom/roblox/client/o$f;->fragment_about_background:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/landing/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 31
    sget v0, Lcom/roblox/client/o$f;->fragment_about_terms_privacy:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/landing/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    sget v1, Lcom/roblox/client/o$f;->fragment_about_user_agent:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/landing/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    sget v2, Lcom/roblox/client/o$f;->fragment_about_baseURL:I

    invoke-virtual {p0, v2}, Lcom/roblox/client/landing/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    new-instance v3, Lcom/roblox/client/landing/AboutActivity$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/landing/AboutActivity$1;-><init>(Lcom/roblox/client/landing/AboutActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-static {p0, v0}, Lcom/roblox/client/ae/a/b;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 43
    invoke-static {}, Lcom/roblox/client/u;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance p1, Lcom/roblox/client/landing/-$$Lambda$AboutActivity$fznbMfPiYaRYKyCsX6L3OaVBJxk;

    invoke-direct {p1, p0}, Lcom/roblox/client/landing/-$$Lambda$AboutActivity$fznbMfPiYaRYKyCsX6L3OaVBJxk;-><init>(Lcom/roblox/client/landing/AboutActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    const-string v0, "about"

    .line 66
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
