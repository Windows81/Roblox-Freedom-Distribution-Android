.class Lcom/roblox/client/contacts/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/roblox/client/contacts/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/roblox/client/http/f;

.field private d:Lcom/roblox/client/ae/v$a;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:J


# direct methods
.method constructor <init>(Lcom/roblox/client/http/f;Lcom/roblox/client/ae/v$a;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/b;->a:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 96
    iput-object p2, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/ae/v$a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/roblox/client/contacts/b;->e:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;J)J
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/roblox/client/contacts/b;->j:J

    return-wide p1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    iget-object v1, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 457
    iget-object v4, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/contacts/model/c;

    invoke-virtual {v2}, Lcom/roblox/client/contacts/model/c;->d()Lcom/roblox/client/contacts/model/ContactRequestObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lcom/roblox/client/b;->aw()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/TreeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/roblox/client/contacts/model/c;",
            ">;"
        }
    .end annotation

    const-string v0, "rbx.contacts"

    const-string v1, "Generating unique contacts."

    .line 182
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 187
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 189
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->b(Landroid/database/Cursor;)Lcom/roblox/client/contacts/model/c;

    move-result-object v1

    .line 192
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;)Ljava/util/TreeMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;)Ljava/util/TreeMap;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private a(JLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 665
    :goto_0
    iget v2, p0, Lcom/roblox/client/contacts/b;->e:I

    if-gt v1, v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/contacts/model/d;

    .line 668
    invoke-virtual {v2}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    .line 669
    invoke-virtual {v2, p3}, Lcom/roblox/client/contacts/model/d;->a(Ljava/lang/String;)V

    .line 670
    iget v1, p0, Lcom/roblox/client/contacts/b;->e:I

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V
    .locals 5

    const/4 v0, 0x1

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_2

    .line 244
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->d(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->c(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_2

    .line 238
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->b(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_2

    .line 235
    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_3
        -0x4053a7f0 -> :sswitch_2
        -0x23d6087c -> :sswitch_1
        0x28c7a9f2 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;JLjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/b;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->a(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->a(Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/b;->a(Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V

    return-void
.end method

.method private a(Lcom/roblox/client/contacts/d;)V
    .locals 8

    const-string v0, "rbx.contacts"

    const-string v1, "Getting avatars."

    .line 577
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 580
    :goto_0
    iget v3, p0, Lcom/roblox/client/contacts/b;->e:I

    if-gt v2, v3, :cond_2

    .line 581
    iget-object v3, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/roblox/client/contacts/model/d;

    invoke-virtual {v3}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ","

    .line 587
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 594
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid avatars to request. ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/roblox/client/contacts/b;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 598
    :cond_3
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->i()Lcom/roblox/platform/http/c/k;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 601
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "150x150"

    const-string v4, "Png"

    .line 598
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/roblox/platform/http/c/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Le/b;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Le/b;->d()Lc/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/t;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    const/4 v2, 0x0

    new-instance v3, Lcom/roblox/client/contacts/b$6;

    invoke-direct {v3, p0, p1}, Lcom/roblox/client/contacts/b$6;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Lcom/roblox/client/http/c;->c()V

    return-void
.end method

.method private a(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "data1"

    .line 259
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data2"

    .line 260
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    const-string p2, "home"

    .line 263
    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/contacts/model/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 2

    const-string v0, "Parse_Merge_Contacts"

    .line 411
    invoke-static {v0}, Lcom/roblox/client/ae/u;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 414
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 416
    new-instance v1, Lcom/roblox/client/contacts/b$4;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$4;-><init>(Lcom/roblox/client/contacts/b;Ljava/lang/String;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 436
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/ae/u;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 437
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;",
            "Lcom/roblox/client/contacts/d;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting contacts from server. Total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.contacts"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Lcom/roblox/client/contacts/d;->a(Ljava/util/ArrayList;)V

    return-void

    .line 327
    :cond_0
    new-instance v8, Lcom/roblox/client/contacts/b$2;

    invoke-direct {v8, v0, v1}, Lcom/roblox/client/contacts/b$2;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    .line 360
    invoke-static {}, Lcom/roblox/client/locale/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v4, Lcom/roblox/client/http/post/ContactsSyncRequestBody;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v2}, Lcom/roblox/client/http/post/ContactsSyncRequestBody;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 364
    new-instance v2, Lcom/google/gson/f;

    invoke-direct {v2}, Lcom/google/gson/f;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/gson/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 367
    iget-object v4, v0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 368
    invoke-static {}, Lcom/roblox/client/u;->H()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 372
    invoke-static {}, Lcom/roblox/client/u;->s()Ljava/lang/String;

    move-result-object v9

    move-object v6, v13

    .line 367
    invoke-interface/range {v4 .. v9}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object v2

    .line 373
    iget-object v4, v0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/ae/v$a;

    invoke-interface {v4}, Lcom/roblox/client/ae/v$a;->a()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/roblox/client/contacts/b;->i:J

    .line 374
    invoke-interface {v2}, Lcom/roblox/client/http/e;->c()V

    .line 376
    invoke-static {}, Lcom/roblox/client/b;->aJ()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-static {v13}, Lcom/roblox/client/ae/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-direct {v0, v2}, Lcom/roblox/client/contacts/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contacts changed. Updating... + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-interface {v1, v2}, Lcom/roblox/client/contacts/d;->a(Ljava/lang/String;)V

    .line 382
    iget-object v11, v0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 383
    invoke-static {}, Lcom/roblox/client/u;->I()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    new-instance v15, Lcom/roblox/client/contacts/b$3;

    invoke-direct {v15, v0, v1}, Lcom/roblox/client/contacts/b$3;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    .line 401
    invoke-static {}, Lcom/roblox/client/u;->s()Ljava/lang/String;

    move-result-object v16

    .line 382
    invoke-interface/range {v11 .. v16}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object v1

    .line 402
    invoke-interface {v1}, Lcom/roblox/client/http/e;->c()V

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V
    .locals 1

    .line 479
    new-instance v0, Lcom/roblox/client/contacts/b$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/roblox/client/contacts/b$5;-><init>(Lcom/roblox/client/contacts/b;Lorg/json/JSONArray;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 567
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Landroid/database/Cursor;)Lcom/roblox/client/contacts/model/c;
    .locals 5

    const/4 v0, 0x0

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x2

    .line 218
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 219
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    new-instance v4, Lcom/roblox/client/contacts/model/c;

    invoke-direct {v4, v0, v1, v2}, Lcom/roblox/client/contacts/model/c;-><init>(JLjava/lang/String;)V

    .line 222
    invoke-virtual {v4, v3}, Lcom/roblox/client/contacts/model/c;->a(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, p1, v4}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V

    return-object v4
.end method

.method static synthetic b(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/contacts/b;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->b(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method private b(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "data1"

    .line 276
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data2"

    .line 277
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 279
    invoke-static {p2}, Lcom/roblox/client/contacts/a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/contacts/model/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 2

    const-string v0, "Parse_Avatars_HeadShots"

    .line 619
    invoke-static {v0}, Lcom/roblox/client/ae/u;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    .line 620
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 622
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 624
    new-instance v1, Lcom/roblox/client/contacts/b$7;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$7;-><init>(Lcom/roblox/client/contacts/b;Ljava/lang/String;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 658
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/ae/u;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 659
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/contacts/b;)Lcom/roblox/client/ae/v$a;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/ae/v$a;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "rbx.contacts"

    const-string v1, "Parsing json."

    .line 441
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "contacts"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "getRobloxContactsFromServer() error parsing response json"

    .line 446
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONException thrown while parsing contacts from server. Exception message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "data2"

    .line 292
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data3"

    .line 293
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data5"

    .line 294
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-virtual {p1, v0}, Lcom/roblox/client/contacts/model/c;->c(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, v1}, Lcom/roblox/client/contacts/model/c;->e(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, p2}, Lcom/roblox/client/contacts/model/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    return-wide v0
.end method

.method private d(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "data10"

    .line 311
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 313
    invoke-virtual {p1, p2}, Lcom/roblox/client/contacts/model/c;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/roblox/client/contacts/b;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/contacts/b;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->i:J

    return-wide v0
.end method

.method static synthetic g(Lcom/roblox/client/contacts/b;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/roblox/client/contacts/b;->e:I

    return p0
.end method

.method static synthetic h(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->j:J

    return-wide v0
.end method


# virtual methods
.method a(Landroid/database/Cursor;Lcom/roblox/client/contacts/d;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    .line 133
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->i:J

    .line 134
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->j:J

    .line 136
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/ae/v$a;

    invoke-interface {v0}, Lcom/roblox/client/ae/v$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    const-string v0, "Unique_Contacts_Thread"

    .line 138
    invoke-static {v0}, Lcom/roblox/client/ae/u;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 142
    new-instance v1, Lcom/roblox/client/contacts/b$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$1;-><init>(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/ae/u;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 172
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V
    .locals 5

    .line 105
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->d()Lcom/roblox/platform/http/c/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/roblox/platform/http/c/g;->c(J)Le/b;

    move-result-object v0

    invoke-interface {v0}, Le/b;->d()Lc/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/t;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    new-instance v2, Lcom/roblox/client/http/post/FriendRequestSendRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/roblox/client/http/post/FriendRequestSendRequestBody;-><init>(J)V

    const/4 p1, 0x0

    invoke-interface {v1, v0, v2, p1, p2}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->g:Ljava/lang/String;

    return-void
.end method

.method b(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    invoke-static {}, Lcom/roblox/client/u;->J()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/http/post/SetPendingTagRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/roblox/client/http/post/SetPendingTagRequestBody;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method c(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V
    .locals 5

    .line 115
    invoke-static {}, Lcom/roblox/platform/i;->a()Lcom/roblox/platform/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/platform/f;->d()Lcom/roblox/platform/http/c/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/roblox/platform/http/c/g;->a(J)Le/b;

    move-result-object v0

    invoke-interface {v0}, Le/b;->d()Lc/aa;

    move-result-object v0

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/t;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    new-instance v2, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;-><init>(J)V

    const/4 p1, 0x0

    invoke-interface {v1, v0, v2, p1, p2}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method

.method d(Lcom/roblox/client/contacts/model/d;Lcom/roblox/client/http/l;)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    invoke-static {}, Lcom/roblox/client/u;->K()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/http/post/SetTagRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/roblox/client/http/post/SetTagRequestBody;-><init>(JLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/http/d;->c()V

    return-void
.end method
