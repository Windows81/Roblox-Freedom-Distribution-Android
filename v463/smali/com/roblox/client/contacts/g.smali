.class public Lcom/roblox/client/contacts/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/contacts/i$b;
.implements Lcom/roblox/client/u/a$a;
.implements Lcom/roblox/client/u/e;


# instance fields
.field private a:Lcom/roblox/client/contacts/i$c;

.field private b:Lcom/roblox/client/contacts/i$a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/contacts/i$c;Lcom/roblox/client/contacts/i$a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/roblox/client/contacts/g;->a:Lcom/roblox/client/contacts/i$c;

    .line 47
    iput-object p2, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    .line 49
    invoke-interface {p1, p0}, Lcom/roblox/client/contacts/i$c;->a(Ljava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/roblox/client/contacts/g;->a:Lcom/roblox/client/contacts/i$c;

    invoke-interface {p1, p0}, Lcom/roblox/client/contacts/i$c;->a(Lcom/roblox/client/u/e;)V

    .line 51
    iget-object p1, p0, Lcom/roblox/client/contacts/g;->a:Lcom/roblox/client/contacts/i$c;

    invoke-interface {p1, p0}, Lcom/roblox/client/contacts/i$c;->a(Lcom/roblox/client/u/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$c;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/contacts/g;->a:Lcom/roblox/client/contacts/i$c;

    return-object p0
.end method

.method private a()Lcom/roblox/client/s/f;
    .locals 1

    .line 42
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts"

    invoke-direct {v1, v3, v2}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Lcom/roblox/client/b;->aw()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 242
    invoke-static {}, Lcom/roblox/client/b;->aw()I

    move-result p1

    .line 246
    :cond_0
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sent"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactFriendFinderContactsSent"

    .line 248
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "etype"

    const-string v3, "Request"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "receiverId"

    invoke-direct {v1, p2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "addFriendClicked"

    .line 217
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/g;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/g;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/g;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    if-eqz p1, :cond_0

    const-string p1, "Success"

    goto :goto_0

    :cond_0
    const-string p1, "Failure"

    :goto_0
    const-string v2, "status"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactFriendFinderContactsUpdated"

    .line 255
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/s/f;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/contacts/g;->a()Lcom/roblox/client/s/f;

    move-result-object p0

    return-object p0
.end method

.method private b(J)V
    .locals 4

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    const-string v2, "etype"

    const-string v3, "Accept"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "receiverId"

    invoke-direct {v1, p2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "addFriendClicked"

    .line 225
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/contacts/g;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/g;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    if-eqz p1, :cond_0

    const-string p1, "Success"

    goto :goto_0

    :cond_0
    const-string p1, "Failure"

    :goto_0
    const-string v2, "status"

    invoke-direct {v1, v2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "contactFriendFinderContactsMatched"

    .line 262
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/contacts/g;)Lcom/roblox/client/contacts/i$a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v1, Lcom/roblox/client/datastructures/NameValuePair;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "contactId"

    invoke-direct {v1, p2, p1}, Lcom/roblox/client/datastructures/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "inviteContactClicked"

    .line 232
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    new-instance v1, Lcom/roblox/client/contacts/g$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/contacts/g$1;-><init>(Lcom/roblox/client/contacts/g;)V

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/contacts/i$a;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/f;)V

    return-void
.end method

.method public a(Lcom/roblox/client/contacts/model/d;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 115
    invoke-static {}, Lcom/roblox/client/b;->cs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    new-instance v1, Lcom/roblox/client/contacts/g$2;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/contacts/g$2;-><init>(Lcom/roblox/client/contacts/g;Lcom/roblox/client/contacts/model/d;)V

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/contacts/i$a;->b(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/contacts/i$a;->b(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V

    .line 152
    :goto_0
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/g;->b(J)V

    goto :goto_2

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->j()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 155
    invoke-static {}, Lcom/roblox/client/b;->cr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    new-instance v1, Lcom/roblox/client/contacts/g$3;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/contacts/g$3;-><init>(Lcom/roblox/client/contacts/g;Lcom/roblox/client/contacts/model/d;)V

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/contacts/i$a;->a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/contacts/g;->b:Lcom/roblox/client/contacts/i$a;

    invoke-interface {v0, p1, v1}, Lcom/roblox/client/contacts/i$a;->a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V

    .line 193
    :goto_1
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/g;->a(J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lcom/roblox/client/u/d;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/roblox/client/u/h;Lcom/roblox/client/u/c;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/roblox/client/contacts/model/d;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/contacts/g;->c(J)V

    return-void
.end method
