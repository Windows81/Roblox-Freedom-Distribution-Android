.class public Lcom/roblox/client/components/RobloxToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ab/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/RobloxToolbar$f;,
        Lcom/roblox/client/components/RobloxToolbar$h;,
        Lcom/roblox/client/components/RobloxToolbar$i;,
        Lcom/roblox/client/components/RobloxToolbar$e;,
        Lcom/roblox/client/components/RobloxToolbar$c;,
        Lcom/roblox/client/components/RobloxToolbar$b;,
        Lcom/roblox/client/components/RobloxToolbar$a;,
        Lcom/roblox/client/components/RobloxToolbar$g;,
        Lcom/roblox/client/components/RobloxToolbar$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Lcom/roblox/client/components/RobloxToolbar$d;

.field private f:Lcom/roblox/client/components/RobloxToolbar$g;

.field private g:Lcom/roblox/client/components/RobloxToolbar$h;

.field private h:Lcom/roblox/client/components/RobloxToolbar$f;

.field private i:Lcom/roblox/client/ab/e;

.field private j:Lcom/roblox/client/ab/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->c:Ljava/lang/Integer;

    .line 152
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->d:Ljava/lang/Integer;

    .line 165
    new-instance p1, Lcom/roblox/client/ab/f;

    invoke-direct {p1}, Lcom/roblox/client/ab/f;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    .line 166
    new-instance p1, Lcom/roblox/client/components/RobloxToolbar$a;

    invoke-direct {p1}, Lcom/roblox/client/components/RobloxToolbar$a;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->e:Lcom/roblox/client/components/RobloxToolbar$d;

    .line 167
    new-instance p1, Lcom/roblox/client/components/RobloxToolbar$i;

    invoke-direct {p1}, Lcom/roblox/client/components/RobloxToolbar$i;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->f:Lcom/roblox/client/components/RobloxToolbar$g;

    .line 168
    new-instance p1, Lcom/roblox/client/components/RobloxToolbar$h;

    invoke-direct {p1}, Lcom/roblox/client/components/RobloxToolbar$h;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->g:Lcom/roblox/client/components/RobloxToolbar$h;

    .line 169
    new-instance p1, Lcom/roblox/client/components/RobloxToolbar$f;

    invoke-direct {p1}, Lcom/roblox/client/components/RobloxToolbar$f;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->h:Lcom/roblox/client/components/RobloxToolbar$f;

    return-void
.end method

.method private a()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 203
    sget v0, Lcom/roblox/client/o$f;->toolbar_title:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RobloxToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->getTitleFont()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/RobloxToolbar;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {p1, p2}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->i:Lcom/roblox/client/ab/e;

    invoke-direct {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->b(Lcom/roblox/client/ab/e;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->setNavigationIcon(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 255
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/roblox/client/ab/e;)I
    .locals 1

    if-nez p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    invoke-interface {p1}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object p1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->e:Lcom/roblox/client/components/RobloxToolbar$d;

    invoke-interface {v0, p1}, Lcom/roblox/client/components/RobloxToolbar$d;->a(Lcom/roblox/client/ab/e;)I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 220
    sget v0, Lcom/roblox/client/o$f;->toolbar_subtitle:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RobloxToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->getSubTitleFont()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/components/RobloxToolbar;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getSubTitleFont()Ljava/lang/String;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->h:Lcom/roblox/client/components/RobloxToolbar$f;

    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    invoke-interface {v1}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RobloxToolbar$f;->a(Lcom/roblox/client/ab/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitleFont()Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->g:Lcom/roblox/client/components/RobloxToolbar$h;

    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    invoke-interface {v1}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RobloxToolbar$h;->a(Lcom/roblox/client/ab/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/roblox/client/ab/e;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->i:Lcom/roblox/client/ab/e;

    if-ne p1, v0, :cond_0

    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->i:Lcom/roblox/client/ab/e;

    .line 276
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getBackgroundColor()I

    move-result p1

    .line 277
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getForegroundColor()I

    move-result v0

    .line 278
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->setBackgroundColor(I)V

    .line 280
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RobloxToolbar;->setTitleTextColor(I)V

    .line 281
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RobloxToolbar;->setSubtitleTextColor(I)V

    .line 283
    iget-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->getTitleFont()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/components/RobloxToolbar;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->getSubTitleFont()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/components/RobloxToolbar;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->a(Z)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 3

    .line 290
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->f:Lcom/roblox/client/components/RobloxToolbar$g;

    iget-object v2, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    .line 291
    invoke-interface {v2}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/roblox/client/components/RobloxToolbar$g;->a(Lcom/roblox/client/ab/e;)I

    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getForegroundColor()I
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/roblox/client/components/RobloxToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/RobloxToolbar;->f:Lcom/roblox/client/components/RobloxToolbar$g;

    iget-object v2, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    .line 296
    invoke-interface {v2}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/roblox/client/components/RobloxToolbar$g;->b(Lcom/roblox/client/ab/e;)I

    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public setIconDelegate(Lcom/roblox/client/components/RobloxToolbar$d;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->e:Lcom/roblox/client/components/RobloxToolbar$d;

    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 247
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    :goto_0
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RobloxToolbar;->a(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 214
    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->b()V

    .line 215
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->d:Ljava/lang/Integer;

    .line 240
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setThemeChooser(Lcom/roblox/client/ab/c;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->j:Lcom/roblox/client/ab/c;

    return-void
.end method

.method public setThemeColorDelegate(Lcom/roblox/client/components/RobloxToolbar$g;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/roblox/client/components/RobloxToolbar;->f:Lcom/roblox/client/components/RobloxToolbar$g;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->a()V

    .line 187
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/roblox/client/components/RobloxToolbar;->a()V

    .line 198
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->c:Ljava/lang/Integer;

    .line 232
    iget-object v0, p0, Lcom/roblox/client/components/RobloxToolbar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method
