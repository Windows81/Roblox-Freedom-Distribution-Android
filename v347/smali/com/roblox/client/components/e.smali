.class public Lcom/roblox/client/components/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/roblox/client/components/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/e$a;,
        Lcom/roblox/client/components/e$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lcom/roblox/client/ReclickableTabHost;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/components/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/TabHost$OnTabChangeListener;

.field private f:Lcom/roblox/client/components/j;

.field private g:Lcom/roblox/client/components/e$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "NavigationBar"

    iput-object v0, p0, Lcom/roblox/client/components/e;->a:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    .line 134
    iput-object v1, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/components/e;->h:Z

    .line 139
    iput-object p1, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    .line 141
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/ReclickableTabHost;

    iput-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    .line 142
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v0}, Lcom/roblox/client/ReclickableTabHost;->setup()V

    .line 144
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v0, p0}, Lcom/roblox/client/ReclickableTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v0, p0}, Lcom/roblox/client/ReclickableTabHost;->setOnTabReselectedListener(Lcom/roblox/client/components/j;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/e;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(III)Landroid/view/View;
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a009c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    const v0, 0x1020006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 317
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    iget-object v2, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    invoke-static {v2, p3}, Landroid/support/v4/a/c;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v2, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 325
    const/4 v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 328
    :cond_0
    return-object v1
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_1
    return v1

    .line 275
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;IIIII)Lcom/roblox/client/components/e$a;
    .locals 6

    .prologue
    .line 228
    new-instance v0, Lcom/roblox/client/components/e$b;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/components/e$b;-><init>(IIIII)V

    .line 231
    invoke-direct {p0, p3, p4, p6}, Lcom/roblox/client/components/e;->a(III)Landroid/view/View;

    move-result-object v1

    .line 232
    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    .line 234
    new-instance v2, Lcom/roblox/client/components/e$a;

    invoke-direct {v2, p2, v0}, Lcom/roblox/client/components/e$a;-><init>(Ljava/lang/String;Lcom/roblox/client/components/e$b;)V

    .line 235
    invoke-virtual {v2, v1}, Lcom/roblox/client/components/e$a;->a(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/roblox/client/components/e$a;->b(I)V

    .line 237
    invoke-virtual {v2, p4, p5}, Lcom/roblox/client/components/e$a;->a(II)V

    .line 238
    iget-object v0, p0, Lcom/roblox/client/components/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/roblox/client/components/e$a;->a(I)V

    .line 240
    return-object v2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/components/e;->h:Z

    .line 157
    return-void
.end method

.method public a(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/roblox/client/components/e;->e:Landroid/widget/TabHost$OnTabChangeListener;

    .line 169
    return-void
.end method

.method public a(Lcom/roblox/client/components/e$a;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {p1}, Lcom/roblox/client/components/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/ReclickableTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcom/roblox/client/components/e$a;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/components/e$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/e$1;-><init>(Lcom/roblox/client/components/e;)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v1, v0}, Lcom/roblox/client/ReclickableTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 222
    return-void
.end method

.method public a(Lcom/roblox/client/components/j;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/roblox/client/components/e;->f:Lcom/roblox/client/components/j;

    .line 165
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/e;->b(Ljava/lang/String;)Lcom/roblox/client/components/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    .line 177
    iget-boolean v0, p0, Lcom/roblox/client/components/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/e;->f:Lcom/roblox/client/components/j;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/roblox/client/components/e;->f:Lcom/roblox/client/components/j;

    invoke-interface {v0, p1}, Lcom/roblox/client/components/j;->a(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/roblox/client/components/e$a;
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/roblox/client/components/e;->d(Ljava/lang/String;)I

    move-result v0

    .line 268
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/e$a;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/components/e;->h:Z

    .line 161
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/roblox/client/components/e;->d(Ljava/lang/String;)I

    move-result v0

    .line 301
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v1, v0}, Lcom/roblox/client/ReclickableTabHost;->setCurrentTab(I)V

    .line 304
    :cond_0
    return v0
.end method

.method public c()Lcom/roblox/client/components/e$a;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v0}, Lcom/roblox/client/ReclickableTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/roblox/client/components/e;->a()V

    .line 374
    iget-object v0, p0, Lcom/roblox/client/components/e;->c:Lcom/roblox/client/ReclickableTabHost;

    invoke-virtual {v0}, Lcom/roblox/client/ReclickableTabHost;->clearAllTabs()V

    .line 376
    iget-object v0, p0, Lcom/roblox/client/components/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    invoke-virtual {p0}, Lcom/roblox/client/components/e;->b()V

    .line 379
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->c()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    invoke-virtual {v1}, Lcom/roblox/client/components/e$a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    invoke-virtual {v1}, Lcom/roblox/client/components/e$a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/e;->b(Ljava/lang/String;)Lcom/roblox/client/components/e$a;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/roblox/client/components/e$a;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    :cond_1
    iput-object v0, p0, Lcom/roblox/client/components/e;->g:Lcom/roblox/client/components/e$a;

    .line 201
    iget-boolean v0, p0, Lcom/roblox/client/components/e;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/components/e;->e:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/roblox/client/components/e;->e:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 204
    :cond_2
    return-void
.end method
