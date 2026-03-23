.class public Lcom/roblox/client/friends/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/friends/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/roblox/client/friends/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/b;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/roblox/client/friends/b;->b:I

    return p0
.end method

.method public static a(II)Lcom/roblox/client/friends/b;
    .locals 3

    .line 40
    new-instance v0, Lcom/roblox/client/friends/b;

    invoke-direct {v0}, Lcom/roblox/client/friends/b;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "text_param"

    .line 42
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "request_code_param"

    .line 43
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/roblox/client/friends/b;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/friends/b;)Lcom/roblox/client/friends/b$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/roblox/client/friends/b;->c:Lcom/roblox/client/friends/b$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 65
    sget p3, Lcom/roblox/client/o$g;->fragment_app_settings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    sget p2, Lcom/roblox/client/o$f;->app_settings_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 67
    iget p3, p0, Lcom/roblox/client/friends/b;->a:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 68
    sget p2, Lcom/roblox/client/o$f;->app_settings_needed_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/roblox/client/friends/b$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/friends/b$1;-><init>(Lcom/roblox/client/friends/b;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 89
    instance-of v0, p1, Lcom/roblox/client/friends/b$a;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/roblox/client/friends/b$a;

    iput-object p1, p0, Lcom/roblox/client/friends/b;->c:Lcom/roblox/client/friends/b$a;

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/roblox/client/friends/b;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/roblox/client/friends/b;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "text_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/friends/b;->a:I

    .line 57
    invoke-virtual {p0}, Lcom/roblox/client/friends/b;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "request_code_param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/roblox/client/friends/b;->b:I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->f()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/roblox/client/friends/b;->c:Lcom/roblox/client/friends/b$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->h()V

    const-string v0, "appSettings"

    .line 83
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
