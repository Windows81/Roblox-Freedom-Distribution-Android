.class Lcom/roblox/client/contacts/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
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
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;",
            "Lcom/roblox/client/contacts/c$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/roblox/client/contacts/c;->a:Lcom/roblox/client/contacts/c$d;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/roblox/client/contacts/c$a;
    .locals 4

    .prologue
    const v1, 0x7f0a003c

    const/4 v2, 0x0

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v0, Lcom/roblox/client/contacts/c$e;

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0177

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/contacts/c$e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a003b

    .line 75
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    new-instance v0, Lcom/roblox/client/contacts/c$b;

    invoke-direct {v0, v1}, Lcom/roblox/client/contacts/c$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    new-instance v0, Lcom/roblox/client/contacts/c$e;

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0171

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/contacts/c$e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a003e

    .line 86
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    new-instance v0, Lcom/roblox/client/contacts/c$f;

    invoke-direct {v0, v1}, Lcom/roblox/client/contacts/c$f;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/roblox/client/contacts/c$a;I)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 99
    iget-object v1, p0, Lcom/roblox/client/contacts/c;->a:Lcom/roblox/client/contacts/c$d;

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/contacts/c$a;->a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/contacts/c$d;)V

    .line 100
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "rbx.contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatedContacts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 132
    iget-object v2, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 134
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/roblox/client/contacts/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0, v2}, Lcom/roblox/client/contacts/c;->notifyItemChanged(I)V

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
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

.method public getItemCount()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roblox/client/contacts/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 106
    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x2

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    const-wide/16 v2, -0x2

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/roblox/client/contacts/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/contacts/c;->a(Landroid/view/ViewGroup;I)Lcom/roblox/client/contacts/c$a;

    move-result-object v0

    return-object v0
.end method
