.class public Lcom/roblox/client/t/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/t/f$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private b:Landroid/view/MenuItem;

.field private c:Landroid/view/Menu;

.field private d:Lcom/roblox/client/components/RobloxToolbar;

.field private e:Lcom/roblox/client/t/f$a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/roblox/client/t/f;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/t/f;)Lcom/roblox/client/components/RobloxToolbar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/t/f;->d:Lcom/roblox/client/components/RobloxToolbar;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportEvents: searchType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMenuOption"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "nativeMain"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "nativeMain|friends"

    .line 205
    invoke-static {p1, p2}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "catalog"

    .line 202
    invoke-static {v1, p2, p1}, Lcom/roblox/client/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "games"

    .line 199
    invoke-static {v1, p2, p1}, Lcom/roblox/client/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "users"

    .line 196
    invoke-static {v1, p2, p1}, Lcom/roblox/client/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/Menu;Landroid/view/MenuItem;Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 180
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 181
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eq v1, p2, :cond_0

    .line 183
    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/t/f;ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/t/f;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/t/f;Landroid/view/Menu;Landroid/view/MenuItem;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/t/f;->a(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return-void
.end method

.method private b()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    invoke-interface {v0}, Lcom/roblox/client/t/f$a;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/roblox/client/t/f$4;->a:[I

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 89
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_search_dark:I

    return v0

    .line 88
    :cond_0
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_search:I

    return v0

    .line 87
    :cond_1
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_search_light:I

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/t/f;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/roblox/client/t/f;->c()I

    move-result p0

    return p0
.end method

.method private c()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    invoke-interface {v0}, Lcom/roblox/client/t/f$a;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/roblox/client/t/f$4;->a:[I

    invoke-virtual {v0}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 98
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_back_dark:I

    return v0

    .line 97
    :cond_0
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_back:I

    return v0

    .line 96
    :cond_1
    sget v0, Lcom/roblox/client/o$e;->topbar_ic_back_light:I

    return v0
.end method

.method static synthetic c(Lcom/roblox/client/t/f;)Landroid/view/Menu;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/t/f;->c:Landroid/view/Menu;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/t/f;)Landroid/view/MenuItem;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 115
    iget-object v1, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    new-instance v2, Lcom/roblox/client/t/f$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/t/f$1;-><init>(Lcom/roblox/client/t/f;Landroidx/appcompat/widget/SearchView;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 141
    sget v1, Landroidx/appcompat/a$f;->search_src_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/high16 v2, -0x1000000

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const v2, -0x777778

    .line 143
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 145
    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SourceSansPro-Regular.ttf"

    invoke-static {v1, v2, v3}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    sget v2, Landroidx/appcompat/a$f;->search_plate:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 149
    sget v3, Lcom/roblox/client/o$e;->textfield_searchview_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$j;->Search_GlobalSearch_Label_SearchWord:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v2, Lcom/roblox/client/t/f$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/t/f$2;-><init>(Lcom/roblox/client/t/f;Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 164
    new-instance v0, Lcom/roblox/client/t/f$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/t/f$3;-><init>(Lcom/roblox/client/t/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/t/f;)Lcom/roblox/client/t/f$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/t/f;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/t/f;->a:Landroidx/fragment/app/Fragment;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;
    .locals 1

    .line 74
    sget v0, Lcom/roblox/client/o$h;->menu_button_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    sget p2, Lcom/roblox/client/o$f;->action_search:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    .line 77
    iget-object p2, p0, Lcom/roblox/client/t/f;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->s()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0}, Lcom/roblox/client/t/f;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 79
    invoke-direct {p0}, Lcom/roblox/client/t/f;->d()V

    .line 81
    iget-object p1, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 104
    iget-object v1, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    invoke-interface {v1}, Lcom/roblox/client/t/f$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lcom/roblox/client/b;->cz()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    invoke-interface {v0}, Lcom/roblox/client/t/f$a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    iget-object v1, p0, Lcom/roblox/client/t/f;->b:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/roblox/client/t/f;->c:Landroid/view/Menu;

    return-void
.end method

.method public a(Lcom/roblox/client/components/RobloxToolbar;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/roblox/client/t/f;->d:Lcom/roblox/client/components/RobloxToolbar;

    return-void
.end method

.method public a(Lcom/roblox/client/t/f$a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/roblox/client/t/f;->e:Lcom/roblox/client/t/f$a;

    return-void
.end method
