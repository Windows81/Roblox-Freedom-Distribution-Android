.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/app/Activity;)Landroid/app/Application;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity/fragment is not yet attached to Application. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/v;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Landroidx/lifecycle/w;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;
    .locals 1

    .line 101
    invoke-static {p0}, Landroidx/lifecycle/w;->b(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 103
    invoke-static {v0}, Landroidx/lifecycle/v$a;->a(Landroid/app/Application;)Landroidx/lifecycle/v$a;

    move-result-object p1

    .line 105
    :cond_0
    new-instance v0, Landroidx/lifecycle/v;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroidx/lifecycle/x;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/v$b;)V

    return-object v0
.end method

.method public static a(Landroidx/fragment/app/c;Landroidx/lifecycle/v$b;)Landroidx/lifecycle/v;
    .locals 1

    .line 122
    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroid/app/Activity;)Landroid/app/Application;

    move-result-object v0

    if-nez p1, :cond_0

    .line 124
    invoke-static {v0}, Landroidx/lifecycle/v$a;->a(Landroid/app/Application;)Landroidx/lifecycle/v$a;

    move-result-object p1

    .line 126
    :cond_0
    new-instance v0, Landroidx/lifecycle/v;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->k()Landroidx/lifecycle/x;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/v$b;)V

    return-object v0
.end method

.method private static b(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t create ViewModelProvider for detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
