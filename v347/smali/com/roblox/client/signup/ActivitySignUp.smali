.class public Lcom/roblox/client/signup/ActivitySignUp;
.super Lcom/roblox/client/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/roblox/client/k;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/signup/ActivitySignUp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const/16 v1, 0x277d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    const v0, 0x7f010015

    const v1, 0x7f010016

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 87
    return-void
.end method

.method private d(I)V
    .locals 2

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const-string v0, "signup"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/ActivitySignUp;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->finish()V

    .line 79
    const/4 v0, 0x0

    const v1, 0x7f010013

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/ActivitySignUp;->overridePendingTransition(II)V

    .line 80
    return-void
.end method


# virtual methods
.method public k()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    .line 93
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    .line 98
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    .line 103
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->d(I)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0801a1

    .line 31
    invoke-super {p0, p1}, Lcom/roblox/client/k;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/roblox/client/signup/ActivitySignUp;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->e()Landroid/support/v4/app/l;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/roblox/client/b;->bd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const-string v1, "signup_window_mvp"

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/b;

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/roblox/client/signup/b;->a()Lcom/roblox/client/signup/b;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "signup_window_mvp"

    .line 43
    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v1, "signup_window"

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/a;

    .line 50
    if-nez v0, :cond_2

    .line 51
    invoke-static {}, Lcom/roblox/client/signup/a;->a()Lcom/roblox/client/signup/a;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/roblox/client/signup/ActivitySignUp;->e()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const-string v2, "signup_window"

    .line 53
    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    goto :goto_0

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentSignUp not null. isAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->isAdded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/roblox/client/signup/a;->isVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "ActivitySignUp"

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "UnexpectedError"

    invoke-static {v1, v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
