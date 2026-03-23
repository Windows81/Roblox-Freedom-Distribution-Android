.class Lcom/roblox/client/contacts/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/roblox/client/contacts/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/roblox/client/http/f;

.field private d:Lcom/roblox/client/util/p$a;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
.method constructor <init>(Lcom/roblox/client/http/f;Lcom/roblox/client/util/p$a;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/roblox/client/contacts/b;->a:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 91
    iput-object p2, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/util/p$a;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/roblox/client/contacts/b;->e:I

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/roblox/client/contacts/b;->j:J

    return-wide p1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 479
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/c;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/c;->d()Lcom/roblox/client/contacts/model/ContactRequestObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/roblox/client/b;->bo()I

    move-result v3

    if-ne v0, v3, :cond_0

    move-object v0, v1

    .line 487
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 47
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
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/roblox/client/contacts/model/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const-string v0, "rbx.contacts"

    const-string v1, "Generating unique contacts."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 207
    const/4 v0, 0x0

    .line 208
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->b(Landroid/database/Cursor;)Lcom/roblox/client/contacts/model/c;

    move-result-object v0

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V

    goto :goto_0

    .line 220
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 675
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/roblox/client/contacts/b;->e:I

    if-gt v1, v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    .line 678
    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 679
    invoke-virtual {v0, p3}, Lcom/roblox/client/contacts/model/d;->a(Ljava/lang/String;)V

    .line 680
    iget v1, p0, Lcom/roblox/client/contacts/b;->e:I

    .line 675
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 269
    :goto_1
    return-void

    .line 255
    :sswitch_0
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_1

    .line 260
    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->b(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_1

    .line 263
    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->c(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_1

    .line 266
    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/roblox/client/contacts/b;->d(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V

    goto :goto_1

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_0
        -0x4053a7f0 -> :sswitch_2
        -0x23d6087c -> :sswitch_3
        0x28c7a9f2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/b;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/roblox/client/contacts/b;->a(Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->a(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->a(Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/contacts/b;Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/contacts/b;->a(Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V

    return-void
.end method

.method private a(Lcom/roblox/client/contacts/d;)V
    .locals 6

    .prologue
    .line 599
    const-string v0, "rbx.contacts"

    const-string v1, "Getting avatars."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    iget v0, p0, Lcom/roblox/client/contacts/b;->e:I

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/roblox/client/contacts/b;->e:I

    if-gt v1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/contacts/model/d;

    invoke-virtual {v0}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    invoke-static {v2}, Lcom/roblox/client/RobloxSettings;->avatarHeadShotForUserIdsUrl(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/roblox/client/contacts/b$8;

    invoke-direct {v3, p0, p1}, Lcom/roblox/client/contacts/b$8;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/c;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lcom/roblox/client/http/c;->c()V

    .line 619
    return-void
.end method

.method private a(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 281
    const-string v0, "data1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "data2"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 285
    const-string v1, "home"

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/contacts/model/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 2

    .prologue
    .line 433
    const-string v0, "Parse_Merge_Contacts"

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 436
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 438
    new-instance v1, Lcom/roblox/client/contacts/b$6;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$6;-><init>(Lcom/roblox/client/contacts/b;Ljava/lang/String;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 458
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/roblox/client/contacts/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/roblox/client/contacts/model/ContactRequestObject;",
            ">;",
            "Lcom/roblox/client/contacts/d;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v0, "rbx.contacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting contacts from server. Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/contacts/b;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Lcom/roblox/client/contacts/d;->a(Ljava/util/ArrayList;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    new-instance v4, Lcom/roblox/client/contacts/b$4;

    invoke-direct {v4, p0, p2}, Lcom/roblox/client/contacts/b$4;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    .line 382
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 383
    const-string v1, "rbx.contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v1, Lcom/roblox/client/http/post/ContactsSyncRequestBody;

    invoke-direct {v1, p1, v0}, Lcom/roblox/client/http/post/ContactsSyncRequestBody;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 386
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/e;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 389
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 390
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->contactsSyncUrl()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v5

    .line 389
    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v1}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/roblox/client/contacts/b;->i:J

    .line 396
    invoke-interface {v0}, Lcom/roblox/client/http/e;->c()V

    .line 398
    invoke-static {}, Lcom/roblox/client/b;->bC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {v2}, Lcom/roblox/client/util/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-direct {p0, v0}, Lcom/roblox/client/contacts/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "rbx.contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contacts changed. Updating... + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-interface {p2, v0}, Lcom/roblox/client/contacts/d;->a(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    .line 405
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->contactsUpdateUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/roblox/client/contacts/b$5;

    invoke-direct {v4, p0, p2}, Lcom/roblox/client/contacts/b$5;-><init>(Lcom/roblox/client/contacts/b;Lcom/roblox/client/contacts/d;)V

    .line 423
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Lcom/roblox/client/http/e;->c()V

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONArray;Lcom/roblox/client/contacts/d;Landroid/os/HandlerThread;)V
    .locals 3

    .prologue
    .line 501
    new-instance v0, Lcom/roblox/client/contacts/b$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/roblox/client/contacts/b$7;-><init>(Lcom/roblox/client/contacts/b;Lorg/json/JSONArray;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 589
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 590
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method private b(Landroid/database/Cursor;)Lcom/roblox/client/contacts/model/c;
    .locals 5

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 240
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v4, Lcom/roblox/client/contacts/model/c;

    invoke-direct {v4, v0, v1, v2}, Lcom/roblox/client/contacts/model/c;-><init>(JLjava/lang/String;)V

    .line 244
    invoke-virtual {v4, v3}, Lcom/roblox/client/contacts/model/c;->a(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1, v4}, Lcom/roblox/client/contacts/b;->a(Landroid/database/Cursor;Lcom/roblox/client/contacts/model/c;)V

    .line 249
    return-object v4
.end method

.method static synthetic b(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/roblox/client/contacts/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/contacts/b;Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/contacts/b;->b(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V

    return-void
.end method

.method private b(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 298
    const-string v0, "data1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "data2"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 301
    invoke-static {v1}, Lcom/roblox/client/contacts/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/contacts/model/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/roblox/client/contacts/d;)V
    .locals 2

    .prologue
    .line 631
    const-string v0, "Parse_Avatars_HeadShots"

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 632
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 634
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 636
    new-instance v1, Lcom/roblox/client/contacts/b$9;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$9;-><init>(Lcom/roblox/client/contacts/b;Ljava/lang/String;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 668
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/roblox/client/contacts/b;)Lcom/roblox/client/util/p$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/util/p$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 463
    const-string v0, "rbx.contacts"

    const-string v1, "Parsing json."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x0

    .line 466
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string v2, "rbx.contacts"

    const-string v3, "getRobloxContactsFromServer() error parsing response json"

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException thrown while parsing contacts from server. Exception message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 314
    const-string v0, "data2"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, "data3"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, "data5"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p1, v0}, Lcom/roblox/client/contacts/model/c;->c(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v1}, Lcom/roblox/client/contacts/model/c;->e(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1, v2}, Lcom/roblox/client/contacts/model/c;->d(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method static synthetic d(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    return-wide v0
.end method

.method private d(Lcom/roblox/client/contacts/model/c;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 333
    const-string v0, "data10"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p1, v0}, Lcom/roblox/client/contacts/model/c;->f(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method static synthetic e(Lcom/roblox/client/contacts/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->i:J

    return-wide v0
.end method

.method static synthetic g(Lcom/roblox/client/contacts/b;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/roblox/client/contacts/b;->e:I

    return v0
.end method

.method static synthetic h(Lcom/roblox/client/contacts/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/contacts/b;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/roblox/client/contacts/b;->j:J

    return-wide v0
.end method


# virtual methods
.method a(Landroid/database/Cursor;Lcom/roblox/client/contacts/d;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    .line 155
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->i:J

    .line 156
    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->j:J

    .line 158
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->d:Lcom/roblox/client/util/p$a;

    invoke-interface {v0}, Lcom/roblox/client/util/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/contacts/b;->h:J

    .line 160
    const-string v0, "Unique_Contacts_Thread"

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 164
    new-instance v1, Lcom/roblox/client/contacts/b$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/roblox/client/contacts/b$3;-><init>(Lcom/roblox/client/contacts/b;Landroid/database/Cursor;Landroid/os/HandlerThread;Lcom/roblox/client/contacts/d;)V

    .line 191
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 193
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/o;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method a(Lcom/roblox/client/contacts/model/d;)V
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getSendFriendRequestUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/http/post/FriendRequestSendRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/roblox/client/http/post/FriendRequestSendRequestBody;-><init>(J)V

    const/4 v3, 0x0

    new-instance v4, Lcom/roblox/client/contacts/b$1;

    invoke-direct {v4, p0}, Lcom/roblox/client/contacts/b$1;-><init>(Lcom/roblox/client/contacts/b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 119
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/roblox/client/contacts/b;->g:Ljava/lang/String;

    .line 96
    return-void
.end method

.method b(Lcom/roblox/client/contacts/model/d;)V
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/roblox/client/contacts/b;->c:Lcom/roblox/client/http/f;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->acceptFriendRequestUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;

    invoke-virtual {p1}, Lcom/roblox/client/contacts/model/d;->d()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/roblox/client/http/post/FriendRequestActionRequestBody;-><init>(J)V

    const/4 v3, 0x0

    new-instance v4, Lcom/roblox/client/contacts/b$2;

    invoke-direct {v4, p0}, Lcom/roblox/client/contacts/b$2;-><init>(Lcom/roblox/client/contacts/b;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Lcom/roblox/client/http/post/GsonCompatibleRequestBody;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/roblox/client/http/d;->c()V

    .line 142
    return-void
.end method
