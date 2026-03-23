.class public Lcom/roblox/client/phonenumber/a;
.super Lcom/roblox/client/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/phonenumber/a$a;
    }
.end annotation


# instance fields
.field private as:Landroidx/recyclerview/widget/RecyclerView;

.field private at:Lcom/roblox/client/phonenumber/b;

.field private au:Lcom/roblox/client/phonenumber/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/phonenumber/a;)Lcom/roblox/client/phonenumber/a$a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/roblox/client/phonenumber/a;->au:Lcom/roblox/client/phonenumber/a$a;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/phonenumber/a;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/roblox/client/phonenumber/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static aq()Lcom/roblox/client/phonenumber/a;
    .locals 1

    .line 31
    new-instance v0, Lcom/roblox/client/phonenumber/a;

    invoke-direct {v0}, Lcom/roblox/client/phonenumber/a;-><init>()V

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/roblox/client/phonenumber/a;->at:Lcom/roblox/client/phonenumber/b;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/roblox/client/phonenumber/b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 38
    sget p3, Lcom/roblox/client/o$g;->fragment_phone_prefix:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/roblox/client/o$f;->phone_prefix_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/roblox/client/phonenumber/a;->as:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    sget p2, Lcom/roblox/client/o$f;->phone_prefix_search_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxSearchView;

    .line 43
    new-instance p3, Lcom/roblox/client/phonenumber/a$1;

    invoke-direct {p3, p0, p2}, Lcom/roblox/client/phonenumber/a$1;-><init>(Lcom/roblox/client/phonenumber/a;Lcom/roblox/client/components/RbxSearchView;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/components/RbxSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 58
    new-instance p2, Lcom/roblox/client/phonenumber/b;

    new-instance p3, Lcom/roblox/client/phonenumber/a$2;

    invoke-direct {p3, p0}, Lcom/roblox/client/phonenumber/a$2;-><init>(Lcom/roblox/client/phonenumber/a;)V

    invoke-direct {p2, p3}, Lcom/roblox/client/phonenumber/b;-><init>(Lcom/roblox/client/phonenumber/b$a;)V

    iput-object p2, p0, Lcom/roblox/client/phonenumber/a;->at:Lcom/roblox/client/phonenumber/b;

    .line 66
    iget-object p3, p0, Lcom/roblox/client/phonenumber/a;->as:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 67
    iget-object p2, p0, Lcom/roblox/client/phonenumber/a;->at:Lcom/roblox/client/phonenumber/b;

    sget-object p3, Lcom/roblox/client/ae/n;->a:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/roblox/client/phonenumber/b;->a(Ljava/util/List;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Landroid/content/Context;)V

    .line 75
    instance-of v0, p1, Lcom/roblox/client/phonenumber/a$a;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/roblox/client/phonenumber/a$a;

    iput-object p1, p0, Lcom/roblox/client/phonenumber/a;->au:Lcom/roblox/client/phonenumber/a$a;

    return-void

    .line 78
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

.method public f()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/roblox/client/s;->f()V

    .line 86
    iget-object v0, p0, Lcom/roblox/client/phonenumber/a;->au:Lcom/roblox/client/phonenumber/a$a;

    invoke-interface {v0}, Lcom/roblox/client/phonenumber/a$a;->l_()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/roblox/client/phonenumber/a;->au:Lcom/roblox/client/phonenumber/a$a;

    return-void
.end method
