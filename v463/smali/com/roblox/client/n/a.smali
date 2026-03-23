.class public Lcom/roblox/client/n/a;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private as:J

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 57
    sget p3, Lcom/roblox/client/o$g;->catalog_promo:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    sget p2, Lcom/roblox/client/o$f;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/roblox/client/n/a;->at:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p2, Lcom/roblox/client/o$f;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/roblox/client/n/a;->au:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget p2, Lcom/roblox/client/o$f;->get_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget p2, Lcom/roblox/client/o$f;->close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->p()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object p2

    iget-object p3, p0, Lcom/roblox/client/n/a;->av:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/c/a/t;->a(Ljava/lang/String;)Lcom/c/a/x;

    move-result-object p2

    sget p3, Lcom/roblox/client/o$f;->thumbnail:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/c/a/x;->a(Landroid/widget/ImageView;)V

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .line 37
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->n()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "assetId"

    const-wide/16 v1, -0x1

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/roblox/client/n/a;->as:J

    const-string v0, "title"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/n/a;->at:Ljava/lang/String;

    const-string v0, "description"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/n/a;->au:Ljava/lang/String;

    const-string v0, "thumbnail"

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/n/a;->av:Ljava/lang/String;

    .line 45
    iget-wide v3, p0, Lcom/roblox/client/n/a;->as:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->c()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    .line 74
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 78
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 79
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/roblox/client/o$f;->close_button:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->c()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/roblox/client/o$f;->get_button:I

    if-ne p1, v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/roblox/client/n/a;->c()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 93
    iget-wide v0, p0, Lcom/roblox/client/n/a;->as:J

    invoke-static {v0, v1}, Lcom/roblox/client/u;->b(J)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assetPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.catalog"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/roblox/client/l/j;

    const-string v1, "CATALOG_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/l/j;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Lcom/roblox/client/l/j;->a(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
