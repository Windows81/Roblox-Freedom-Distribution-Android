.class public Lcom/roblox/abtesting/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/abtesting/a$a;
    }
.end annotation


# static fields
.field private static o:Lcom/roblox/abtesting/a;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/roblox/abtesting/models/ABTest;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/roblox/client/i/f;

.field private c:Lcom/roblox/client/http/f;

.field private d:Lcom/roblox/client/util/m;

.field private final e:Lcom/roblox/client/util/p$a;

.field private final f:Lcom/roblox/abtesting/a$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/roblox/client/util/p$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Lcom/roblox/abtesting/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/abtesting/a$1;-><init>(Lcom/roblox/abtesting/a;)V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    .line 65
    iput-wide v2, p0, Lcom/roblox/abtesting/a;->i:J

    .line 66
    iput-wide v2, p0, Lcom/roblox/abtesting/a;->j:J

    .line 77
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->abTestEnrollUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/abtesting/a;->g:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->abTestGetEnrollmentsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/abtesting/a;->h:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/roblox/abtesting/a;->e:Lcom/roblox/client/util/p$a;

    .line 93
    return-void
.end method

.method public static declared-synchronized a()Lcom/roblox/abtesting/a;
    .locals 3

    .prologue
    .line 95
    const-class v1, Lcom/roblox/abtesting/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/roblox/abtesting/a;

    new-instance v2, Lcom/roblox/client/util/p$b;

    invoke-direct {v2}, Lcom/roblox/client/util/p$b;-><init>()V

    invoke-direct {v0, v2}, Lcom/roblox/abtesting/a;-><init>(Lcom/roblox/client/util/p$a;)V

    sput-object v0, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;

    .line 98
    :cond_0
    sget-object v0, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/roblox/abtesting/a;)Lcom/roblox/client/i/f;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/i/f;

    return-object v0
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 422
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 425
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    iget-object v3, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/abtesting/models/ABTest;

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 431
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->e(Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/abtesting/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 520
    new-instance v3, Lcom/roblox/abtesting/models/ABTest;

    invoke-direct {v3, v0, p2}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 521
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_0

    iget-wide v0, p0, Lcom/roblox/abtesting/a;->i:J

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/roblox/abtesting/models/ABTest;->setSubjectTargetId(J)V

    .line 525
    invoke-virtual {p0, v3}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/models/ABTest;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-wide v0, p0, Lcom/roblox/abtesting/a;->j:J

    goto :goto_1

    .line 527
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V
    .locals 6

    .prologue
    .line 381
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 383
    :try_start_0
    const-string v0, "enrollments"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    new-instance v4, Lcom/roblox/abtesting/a$3;

    invoke-direct {v4, p0, p3}, Lcom/roblox/abtesting/a$3;-><init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V

    .line 415
    const-string v0, "ABTestManager"

    const-string v2, "getTestsFromNetwork."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    .line 417
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    .line 416
    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Lcom/roblox/client/http/e;->c()V

    .line 419
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 536
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 538
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 539
    invoke-static {v2}, Lcom/roblox/abtesting/models/ABTest;->fromJson(Lorg/json/JSONObject;)Lcom/roblox/abtesting/models/ABTest;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_0

    .line 541
    invoke-virtual {p0, v2}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/models/ABTest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    iget-object v0, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/i/f;

    const-string v1, "Android-Fetch-ABTests-Parsing-Failed"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 547
    const-string v0, "ABTestManager.parseResponse: JSONException caught."

    invoke-static {v0}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;)V

    .line 554
    :goto_1
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/i/f;

    const-string v1, "Android-Fetch-ABTests-Success"

    invoke-virtual {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private e(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    .line 283
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/roblox/abtesting/a;->i:J

    .line 189
    return-void
.end method

.method public a(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    .line 227
    return-void
.end method

.method a(Lcom/roblox/abtesting/models/ABTest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The test to add cannot be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/abtesting/models/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The test name is either empty or null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method public a(Lcom/roblox/client/http/f;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    .line 185
    return-void
.end method

.method public a(Lcom/roblox/client/i/f;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/i/f;

    .line 181
    return-void
.end method

.method public a(Lcom/roblox/client/util/m;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/roblox/abtesting/a;->d:Lcom/roblox/client/util/m;

    .line 177
    return-void
.end method

.method public a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 308
    if-nez p3, :cond_0

    .line 309
    iget-object p3, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 313
    :cond_1
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    .line 330
    :goto_0
    return-void

    .line 317
    :cond_2
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_3

    iget-wide v0, p0, Lcom/roblox/abtesting/a;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_5

    iget-wide v0, p0, Lcom/roblox/abtesting/a;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 320
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not set before enrolling ab tests."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 328
    const-string v1, "ABTestManager"

    const-string v2, "Enrolling."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/roblox/abtesting/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/roblox/abtesting/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/abtesting/models/ABTest;

    .line 452
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return v1

    :cond_0
    const-string v2, "LockedOn"

    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Enrolled"

    .line 457
    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 456
    goto :goto_0

    :cond_2
    move v0, v1

    .line 457
    goto :goto_1
.end method

.method a(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    iget-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/abtesting/models/ABTest;

    .line 479
    if-nez v0, :cond_0

    .line 490
    :goto_0
    return v2

    .line 483
    :cond_0
    const-string v3, "LockedOn"

    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 484
    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->getVariation()Ljava/lang/Integer;

    move-result-object v0

    .line 490
    invoke-virtual {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/roblox/abtesting/a;->j:J

    .line 193
    return-void
.end method

.method public b(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->b(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    .line 236
    return-void
.end method

.method public b(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 355
    if-nez p3, :cond_0

    .line 356
    iget-object p3, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 360
    :cond_1
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    .line 377
    :goto_0
    return-void

    .line 364
    :cond_2
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_3

    iget-wide v0, p0, Lcom/roblox/abtesting/a;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_5

    iget-wide v0, p0, Lcom/roblox/abtesting/a;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 367
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not set before getting enrollments for ab tests."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 375
    const-string v1, "ABTestManager"

    const-string v2, "Getting enrollments."

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/roblox/abtesting/a;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/roblox/abtesting/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "NewUsers.SignUpPage.AddEmailToSignup"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    .line 245
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 113
    .line 114
    invoke-static {}, Lcom/roblox/client/b;->be()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/roblox/abtesting/a$a;)V
    .locals 3

    .prologue
    .line 255
    new-instance v0, Lcom/roblox/abtesting/a$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/abtesting/a$2;-><init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V

    .line 263
    invoke-static {}, Lcom/roblox/client/i/c;->a()Lcom/roblox/client/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/i/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/ArrayList;

    sget-object v2, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v1, v2, v0}, Lcom/roblox/abtesting/a;->a(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/ArrayList;

    sget-object v2, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v1, v2, v0}, Lcom/roblox/abtesting/a;->b(Ljava/util/List;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 119
    .line 120
    invoke-static {}, Lcom/roblox/client/b;->bt()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 125
    .line 126
    invoke-static {}, Lcom/roblox/client/b;->bP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/roblox/client/b;->bP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 134
    .line 135
    invoke-static {}, Lcom/roblox/client/b;->bQ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/roblox/client/b;->bQ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 143
    .line 144
    invoke-static {}, Lcom/roblox/client/b;->bP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/roblox/client/b;->bP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 152
    .line 153
    invoke-static {}, Lcom/roblox/client/b;->bQ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/roblox/client/b;->bQ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 152
    :goto_0
    return v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 161
    .line 162
    invoke-static {}, Lcom/roblox/client/b;->bT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/roblox/abtesting/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/roblox/client/b;->bP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/roblox/client/b;->bQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/ArrayList;

    invoke-static {}, Lcom/roblox/client/b;->bt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/ArrayList;

    invoke-static {}, Lcom/roblox/client/b;->be()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/ArrayList;

    invoke-static {}, Lcom/roblox/client/b;->bT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method
