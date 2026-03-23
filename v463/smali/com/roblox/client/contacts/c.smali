.class Lcom/roblox/client/contacts/c;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/contacts/c$c;,
        Lcom/roblox/client/contacts/c$e;,
        Lcom/roblox/client/contacts/c$b;,
        Lcom/roblox/client/contacts/c$f;,
        Lcom/roblox/client/contacts/c$a;,
        Lcom/roblox/client/contacts/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/roblox/client/contacts/c$a;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/contacts/c$d;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/roblox/client/contacts/c$c;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/roblox/client/contacts/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;",
            "Lcom/roblox/client/contacts/c$d;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/roblox/client/contacts/c;->a:Lcom/roblox/client/contacts/c$d;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/contacts/model/d;

    .line 106
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/16 v0, -0x2

    .line 108
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/c;->c(Landroid/view/ViewGroup;I)Lcom/roblox/client/contacts/c$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 33
    check-cast p1, Lcom/roblox/client/contacts/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c$a;I)V

    return-void
.end method

.method public a(Lcom/roblox/client/contacts/c$a;I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/contacts/model/d;

    .line 99
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->a:Lcom/roblox/client/contacts/c$d;

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/contacts/c$a;->a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatedContacts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.contacts"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 132
    iget-object v1, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0, v1}, Lcom/roblox/client/contacts/c;->c(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/roblox/client/contacts/c$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$g;->contacts_list_item:I

    .line 75
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/roblox/client/contacts/c$b;

    invoke-direct {p2, p1}, Lcom/roblox/client/contacts/c$b;-><init>(Landroid/view/View;)V

    return-object p2

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$g;->contacts_list_section_header:I

    .line 69
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v0, Lcom/roblox/client/contacts/c$e;

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_OtherContacts:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/roblox/client/contacts/c$e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$g;->contacts_roblox_list_item:I

    .line 86
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/roblox/client/contacts/c$f;

    invoke-direct {p2, p1}, Lcom/roblox/client/contacts/c$f;-><init>(Landroid/view/View;)V

    return-object p2

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$g;->contacts_list_section_header:I

    .line 80
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v0, Lcom/roblox/client/contacts/c$e;

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/roblox/client/o$j;->Features_FriendFinder_Label_ContactsAlsoOnRoblox:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/roblox/client/contacts/c$e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->d:Lcom/roblox/client/contacts/c$c;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/roblox/client/contacts/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/contacts/c$c;-><init>(Lcom/roblox/client/contacts/c;Lcom/roblox/client/contacts/c$1;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/c;->d:Lcom/roblox/client/contacts/c$c;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->d:Lcom/roblox/client/contacts/c$c;

    return-object v0
.end method
