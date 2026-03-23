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

    .line 309
    iput-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/contacts/c;Lcom/roblox/client/contacts/c$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/c$c;-><init>(Lcom/roblox/client/contacts/c;)V

    return-void
.end method

.method private a(Lcom/roblox/client/contacts/model/d;)Z
    .locals 5

    .line 337
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 313
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-object v2, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {v2}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/contacts/model/d;

    .line 320
    invoke-direct {p0, v3}, Lcom/roblox/client/contacts/c$c;->a(Lcom/roblox/client/contacts/model/d;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {v3}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 327
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {p1}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 330
    iget-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-static {p1}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/roblox/client/contacts/c;->a(Lcom/roblox/client/contacts/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 344
    iget-object p1, p0, Lcom/roblox/client/contacts/c$c;->a:Lcom/roblox/client/contacts/c;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/c;->c()V

    return-void
.end method
