.class public Lcom/roblox/client/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/h;

.field private b:Z

.field private c:I

.field private d:Landroid/view/MenuItem;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/j/c;-><init>(Landroid/support/v4/app/h;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/h;Z)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/j/c;->c:I

    .line 57
    iput-object p1, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    .line 58
    iput-boolean p2, p0, Lcom/roblox/client/j/c;->b:Z

    .line 59
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 113
    iput p1, p0, Lcom/roblox/client/j/c;->c:I

    .line 114
    iget-object v0, p0, Lcom/roblox/client/j/c;->d:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 115
    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iget v1, p0, Lcom/roblox/client/j/c;->c:I

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/j/c;->a(Landroid/widget/TextView;I)V

    .line 117
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 121
    if-lez p2, :cond_1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const/16 v0, 0x63

    if-le p2, v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p2}, Lcom/roblox/client/locale/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    invoke-static {v0}, Lcom/roblox/client/p;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    invoke-virtual {v1}, Landroid/support/v4/app/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    invoke-virtual {v2}, Landroid/support/v4/app/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 142
    iget-object v3, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    .line 144
    iget-object v4, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const/16 v5, 0x1a4

    invoke-static {v4, v5}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    .line 145
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    .line 146
    iget-object v2, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/roblox/client/p;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 148
    new-instance v3, Lcom/roblox/client/g;

    invoke-direct {v3}, Lcom/roblox/client/g;-><init>()V

    .line 149
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/roblox/client/g;->setStyle(II)V

    .line 151
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "dialogWidth"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "dialogHeight"

    invoke-virtual {v5, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogGravity"

    const/16 v4, 0x35

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogOffsetY"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialogOffsetX"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v0, "DEFAULT_URL"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->notificationStreamUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v5}, Lcom/roblox/client/g;->setArguments(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "NOTIFICATION_STREAM_TAG"

    invoke-virtual {v3, v0, v1}, Lcom/roblox/client/g;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 161
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 62
    const v0, 0x7f0b0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    const v0, 0x7f08001c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/c;->d:Landroid/view/MenuItem;

    .line 65
    iget-object v0, p0, Lcom/roblox/client/j/c;->d:Landroid/view/MenuItem;

    invoke-static {v0}, Landroid/support/v4/view/g;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 66
    const v0, 0x7f080145

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/roblox/client/j/c;->e:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/roblox/client/j/c;->e:Landroid/widget/TextView;

    iget v2, p0, Lcom/roblox/client/j/c;->c:I

    invoke-direct {p0, v1, v2}, Lcom/roblox/client/j/c;->a(Landroid/widget/TextView;I)V

    .line 69
    iget-boolean v1, p0, Lcom/roblox/client/j/c;->b:Z

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/roblox/client/j/c$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/j/c$1;-><init>(Lcom/roblox/client/j/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/j/c;->d:Landroid/view/MenuItem;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->bW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->c()I

    move-result v0

    .line 89
    invoke-static {v0}, Lcom/roblox/client/i;->a(I)V

    .line 92
    :cond_1
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->c(I)V

    .line 93
    iput v1, p0, Lcom/roblox/client/j/c;->c:I

    .line 95
    iget-object v0, p0, Lcom/roblox/client/j/c;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/roblox/client/j/c;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_2
    invoke-static {}, Lcom/roblox/platform/g;->a()Lcom/roblox/platform/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/e;->d()Lcom/roblox/platform/http/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/http/c/e;->b()Ld/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/platform/http/a/a;

    invoke-direct {v1}, Lcom/roblox/platform/http/a/a;-><init>()V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    .line 102
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const-class v2, Lcom/roblox/client/NotificationStreamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    iget-object v1, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const/16 v2, 0x277e

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/h;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    iget-object v0, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    const v1, 0x7f010015

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/h;->overridePendingTransition(II)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/roblox/client/j/c;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/roblox/client/j/c;->a:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v0

    const-string v1, "NOTIFICATION_STREAM_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/q/d;->c(I)V

    .line 172
    :cond_0
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/j/c;->a(I)V

    .line 173
    return-void
.end method
