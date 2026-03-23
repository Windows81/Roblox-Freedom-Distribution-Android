.class public Lcom/roblox/client/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/j/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private b:Landroid/view/MenuItem;

.field private c:Lcom/roblox/client/j/e$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/roblox/client/j/e;->a:Landroid/support/v4/app/Fragment;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/j/e;)Lcom/roblox/client/j/e$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/j/e;->c:Lcom/roblox/client/j/e$a;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/j/e;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/j/e;->a:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/j/e;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0b0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 59
    const v0, 0x7f08001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    .line 61
    invoke-virtual {p0}, Lcom/roblox/client/j/e;->b()V

    .line 63
    iget-object v0, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 68
    iget-object v1, p0, Lcom/roblox/client/j/e;->c:Lcom/roblox/client/j/e$a;

    invoke-interface {v1}, Lcom/roblox/client/j/e$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public a(Lcom/roblox/client/j/e$a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/roblox/client/j/e;->c:Lcom/roblox/client/j/e$a;

    .line 55
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 73
    iget-object v0, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/roblox/client/j/e;->b:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 79
    const v1, 0x7f080188

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    const v2, 0x7f07075d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    new-instance v2, Lcom/roblox/client/j/e$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/j/e$1;-><init>(Lcom/roblox/client/j/e;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 111
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 115
    const v2, 0x7f08018e

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    const v3, 0x7f070804

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    const v3, 0x7f070733

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    new-instance v3, Lcom/roblox/client/j/e$2;

    invoke-direct {v3, p0}, Lcom/roblox/client/j/e$2;-><init>(Lcom/roblox/client/j/e;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e01c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v2, Lcom/roblox/client/j/e$3;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/j/e$3;-><init>(Lcom/roblox/client/j/e;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 162
    new-instance v0, Lcom/roblox/client/j/e$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/j/e$4;-><init>(Lcom/roblox/client/j/e;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 176
    return-void
.end method
