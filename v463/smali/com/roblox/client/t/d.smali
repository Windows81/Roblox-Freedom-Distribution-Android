.class public Lcom/roblox/client/t/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroidx/fragment/app/c;

.field private c:Lcom/roblox/client/ab/c;

.field private d:I

.field private e:I

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/roblox/client/ab/f;

    invoke-direct {v0}, Lcom/roblox/client/ab/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/t/d;-><init>(Landroidx/fragment/app/Fragment;Lcom/roblox/client/ab/c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/roblox/client/ab/c;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NOTIFICATION_STREAM_TAG"

    .line 43
    iput-object v0, p0, Lcom/roblox/client/t/d;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/roblox/client/t/d;->d:I

    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    .line 60
    iput-object p2, p0, Lcom/roblox/client/t/d;->c:Lcom/roblox/client/ab/c;

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    sget p2, Lcom/roblox/client/o$c;->dark_slate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, -0xbbbbbc

    :goto_0
    iput p1, p0, Lcom/roblox/client/t/d;->e:I

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 157
    iput p1, p0, Lcom/roblox/client/t/d;->d:I

    .line 158
    iget-object p1, p0, Lcom/roblox/client/t/d;->f:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 159
    sget v0, Lcom/roblox/client/o$f;->notification_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    iget v0, p0, Lcom/roblox/client/t/d;->d:I

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/t/d;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 1

    if-lez p2, :cond_1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_99_Plus:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p2}, Lcom/roblox/client/locale/e;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private b(Landroidx/lifecycle/i;)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    invoke-static {v0}, Lcom/roblox/client/x;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$d;->mainToolbarHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    invoke-virtual {v2}, Landroidx/fragment/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$d;->mainTabWidgetHeight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lcom/roblox/client/x;->a(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    .line 188
    iget-object v4, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Lcom/roblox/client/x;->a(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    .line 189
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 190
    iget-object v2, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/roblox/client/x;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 192
    new-instance v3, Lcom/roblox/client/n;

    invoke-direct {v3}, Lcom/roblox/client/n;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 193
    invoke-virtual {v3, v5, v6}, Lcom/roblox/client/n;->a(II)V

    .line 195
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "dialogWidth"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "dialogHeight"

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogGravity"

    const/16 v4, 0x35

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogOffsetY"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogOffsetX"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-static {}, Lcom/roblox/client/u;->ak()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_URL"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v5}, Lcom/roblox/client/n;->g(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v3}, Lcom/roblox/client/n;->g()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/g;

    move-result-object p1

    const-string v0, "NOTIFICATION_STREAM_TAG"

    invoke-virtual {v3, p1, v0}, Lcom/roblox/client/n;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    return-void
.end method

.method private c()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/roblox/client/t/d;->c:Lcom/roblox/client/ab/c;

    invoke-interface {v0}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/roblox/client/t/d$2;->a:[I

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 92
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_notification_dark:I

    return v0

    .line 90
    :cond_0
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_notification_light:I

    return v0
.end method

.method private d()I
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/roblox/client/t/d;->c:Lcom/roblox/client/ab/c;

    invoke-interface {v0}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/roblox/client/t/d$2;->a:[I

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 101
    sget v0, Lcom/roblox/client/o$e;->stream_label_dark:I

    return v0

    .line 99
    :cond_0
    sget v0, Lcom/roblox/client/o$e;->stream_label_light:I

    return v0
.end method

.method private e()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/roblox/client/t/d;->c:Lcom/roblox/client/ab/c;

    invoke-interface {v0}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/roblox/client/t/d$2;->a:[I

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 110
    iget v0, p0, Lcom/roblox/client/t/d;->e:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;
    .locals 1

    .line 66
    sget v0, Lcom/roblox/client/o$h;->menu_button_notification_stream:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    sget p2, Lcom/roblox/client/o$f;->action_notification_stream:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/d;->f:Landroid/view/MenuItem;

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/roblox/client/o$f;->notification_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/roblox/client/o$f;->notification_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/roblox/client/t/d;->g:Landroid/widget/TextView;

    .line 72
    iget v0, p0, Lcom/roblox/client/t/d;->d:I

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/t/d;->a(Landroid/widget/TextView;I)V

    .line 73
    new-instance p1, Lcom/roblox/client/t/d$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/t/d$1;-><init>(Lcom/roblox/client/t/d;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/roblox/client/t/d;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object p1, p0, Lcom/roblox/client/t/d;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/t/d;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object p1, p0, Lcom/roblox/client/t/d;->g:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/t/d;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/roblox/client/t/d;->f:Landroid/view/MenuItem;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/roblox/client/t/d;->a(Landroidx/lifecycle/i;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/i;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->be()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->c()I

    move-result v0

    .line 127
    invoke-static {v0}, Lcom/roblox/client/p;->a(I)V

    .line 130
    :cond_1
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->a(I)V

    .line 131
    iput v1, p0, Lcom/roblox/client/t/d;->d:I

    .line 133
    iget-object v0, p0, Lcom/roblox/client/t/d;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_2
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->c()Lcom/roblox/platform/http/c/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/i;->b()Le/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/a/a;

    invoke-direct {v1}, Lcom/roblox/platform/http/a/a;-><init>()V

    invoke-interface {v0, v1}, Le/b;->a(Le/d;)V

    .line 140
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    const-class v2, Lcom/roblox/client/NotificationStreamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const-string v1, "SEND_DATA_MODEL_FOCUS_EVENTS_EXTRA"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    const/16 v1, 0x277e

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    iget-object p1, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    sget v0, Lcom/roblox/client/o$a;->slide_up_short:I

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/c;->overridePendingTransition(II)V

    goto :goto_0

    .line 152
    :cond_4
    invoke-direct {p0, p1}, Lcom/roblox/client/t/d;->b(Landroidx/lifecycle/i;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/roblox/client/t/d;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "NOTIFICATION_STREAM_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ad/c;->a(I)V

    .line 220
    :cond_0
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/ad/c;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/t/d;->a(I)V

    return-void
.end method
