.class public Lcom/roblox/client/landing/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/landing/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/roblox/client/landing/a;)Lcom/roblox/client/landing/b;
    .locals 3

    .line 35
    new-instance v0, Lcom/roblox/client/landing/b;

    invoke-direct {v0}, Lcom/roblox/client/landing/b;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemId"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/roblox/client/landing/b;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 52
    sget p3, Lcom/roblox/client/o$g;->fragment_carousel_item:I

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 55
    sget p2, Lcom/roblox/client/o$f;->landing_carousel_slide_image_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 56
    sget p3, Lcom/roblox/client/o$f;->landing_carousel_slide_title:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/roblox/client/components/RbxTextView;

    .line 57
    sget v1, Lcom/roblox/client/o$f;->landing_carousel_slide_body_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/components/RbxTextView;

    .line 59
    iget-object v2, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/a;

    invoke-virtual {v2}, Lcom/roblox/client/landing/a;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/roblox/client/landing/b;->p()Landroid/content/Context;

    move-result-object p2

    .line 61
    iget-object v2, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/a;

    invoke-virtual {v2}, Lcom/roblox/client/landing/a;->c()I

    move-result v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p2, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p3, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/a;

    invoke-virtual {p3}, Lcom/roblox/client/landing/a;->b()I

    move-result p3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/roblox/client/landing/b;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "itemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/landing/a;

    iput-object p1, p0, Lcom/roblox/client/landing/b;->a:Lcom/roblox/client/landing/a;

    return-void
.end method
