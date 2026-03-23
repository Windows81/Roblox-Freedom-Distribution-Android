.class Lcom/roblox/client/contacts/c$c;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/contacts/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/contacts/c;


# direct methods
.method private constructor <init>(Lcom/roblox/client/contacts/c;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/contacts/c;Lcom/roblox/client/contacts/c$1;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$c;-><init>(Lcom/roblox/client/contacts/c;)V

    return-void
.end method

.method private a(Lcom/roblox/client/contacts/model/d;)Z
    .locals 4

    .prologue
    .line 337
    const-wide/16 v0, -0x2

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    .line 313
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {v0}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 320
    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/c$c;->a(Lcom/roblox/client/contacts/model/d;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 327
    iput-object v3, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 333
    :goto_1
    return-object v1

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {v0}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 330
    iget-object v0, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {v0}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 343
    iget-object v1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 344
    iget-object v0, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/c;->notifyDataSetChanged()V

    .line 345
    return-void
.end method
