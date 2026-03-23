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
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/roblox/abtesting/models/ABTest;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/roblox/client/s/f$a;

.field private c:Lcom/roblox/client/http/f;

.field private d:Lcom/roblox/client/ae/s;

.field private final e:Lcom/roblox/client/ae/v$a;

.field private final f:Lcom/roblox/abtesting/a$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/roblox/client/ae/v$a;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Lcom/roblox/abtesting/a$1;

    invoke-direct {v0, p0}, Lcom/roblox/abtesting/a$1;-><init>(Lcom/roblox/abtesting/a;)V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/roblox/abtesting/a;->i:J

    .line 67
    iput-wide v0, p0, Lcom/roblox/abtesting/a;->j:J

    .line 78
    invoke-static {}, Lcom/roblox/client/u;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/abtesting/a;->g:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/roblox/client/u;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/abtesting/a;->h:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/HashSet;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    .line 93
    iput-object p1, p0, Lcom/roblox/abtesting/a;->e:Lcom/roblox/client/ae/v$a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/roblox/abtesting/a;
    .locals 3

    const-class v0, Lcom/roblox/abtesting/a;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;

    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Lcom/roblox/abtesting/b;

    new-instance v2, Lcom/roblox/client/ae/v$b;

    invoke-direct {v2}, Lcom/roblox/client/ae/v$b;-><init>()V

    invoke-direct {v1, v2}, Lcom/roblox/abtesting/b;-><init>(Lcom/roblox/client/ae/v$a;)V

    sput-object v1, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lcom/roblox/abtesting/a;

    new-instance v2, Lcom/roblox/client/ae/v$b;

    invoke-direct {v2}, Lcom/roblox/client/ae/v$b;-><init>()V

    invoke-direct {v1, v2}, Lcom/roblox/abtesting/a;-><init>(Lcom/roblox/client/ae/v$a;)V

    sput-object v1, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;

    .line 105
    :cond_1
    :goto_0
    sget-object v1, Lcom/roblox/abtesting/a;->o:Lcom/roblox/abtesting/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 480
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/abtesting/models/ABTest;

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Lcom/roblox/abtesting/models/ABTest;->toJsonV1()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->e(Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/abtesting/a;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            ")V"
        }
    .end annotation

    .line 570
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    new-instance v1, Lcom/roblox/abtesting/models/ABTest;

    invoke-direct {v1, v0, p2}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 572
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_0

    iget-wide v2, p0, Lcom/roblox/abtesting/a;->i:J

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/roblox/abtesting/a;->j:J

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/roblox/abtesting/models/ABTest;->setSubjectTargetId(J)V

    .line 576
    invoke-virtual {p0, v1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/models/ABTest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V
    .locals 6

    .line 440
    new-instance v4, Lcom/roblox/abtesting/a$3;

    invoke-direct {v4, p0, p3}, Lcom/roblox/abtesting/a$3;-><init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V

    const-string p3, "ABTestManager"

    const-string v0, "getTestsFromNetwork."

    .line 466
    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postBody: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    .line 469
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {}, Lcom/roblox/client/u;->s()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p2

    .line 468
    invoke-interface/range {v0 .. v5}, Lcom/roblox/client/http/f;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/http/b$a;Lcom/roblox/client/http/l;Ljava/lang/String;)Lcom/roblox/client/http/d;

    move-result-object p1

    .line 473
    invoke-interface {p1}, Lcom/roblox/client/http/e;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 587
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 589
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 590
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 591
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 592
    invoke-static {v1}, Lcom/roblox/abtesting/models/ABTest;->fromJsonV1(Lorg/json/JSONObject;)Lcom/roblox/abtesting/models/ABTest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0, v1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/models/ABTest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/abtesting/a;->q()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-Fetch-ABTests-Success"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid json. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ABTestManager"

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/roblox/abtesting/a;->q()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string v0, "Android-Fetch-ABTests-Parsing-Failed"

    invoke-virtual {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    const-string p1, "ABTestManager.parseResponse: JSONException caught."

    .line 601
    invoke-static {p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABTestManager"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-wide p1, p0, Lcom/roblox/abtesting/a;->i:J

    return-void
.end method

.method public a(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method a(Lcom/roblox/abtesting/models/ABTest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 560
    invoke-virtual {p1}, Lcom/roblox/abtesting/models/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 562
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The test name is either empty or null."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The test to add cannot be null."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/roblox/client/ae/s;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/roblox/abtesting/a;->d:Lcom/roblox/client/ae/s;

    return-void
.end method

.method public a(Lcom/roblox/client/http/f;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    return-void
.end method

.method public a(Lcom/roblox/client/s/f$a;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/s/f$a;

    return-void
.end method

.method public a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 366
    iget-object p3, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 374
    :cond_1
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-wide/16 v1, -0x1

    if-ne p2, v0, :cond_2

    iget-wide v3, p0, Lcom/roblox/abtesting/a;->i:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_4

    iget-wide v3, p0, Lcom/roblox/abtesting/a;->j:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    goto :goto_0

    .line 377
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was not set before enrolling ab tests."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "ABTestManager"

    const-string v0, "Enrolling."

    .line 385
    invoke-static {p2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p2, p0, Lcom/roblox/abtesting/a;->g:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/abtesting/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V

    return-void

    .line 370
    :cond_5
    :goto_1
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/roblox/abtesting/models/ABTest;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 511
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockedOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    invoke-virtual {p1}, Lcom/roblox/abtesting/models/ABTest;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Enrolled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/roblox/abtesting/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/abtesting/models/ABTest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 538
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/abtesting/models/ABTest;->getVariation()Ljava/lang/Integer;

    move-result-object v0

    .line 541
    invoke-virtual {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(J)V
    .locals 0

    .line 239
    iput-wide p1, p0, Lcom/roblox/abtesting/a;->j:J

    return-void
.end method

.method public b(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->b(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method public b(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/abtesting/models/ABTest$SubjectTypes;",
            "Lcom/roblox/abtesting/a$a;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 414
    iget-object p3, p0, Lcom/roblox/abtesting/a;->f:Lcom/roblox/abtesting/a$a;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/roblox/abtesting/a;->c:Lcom/roblox/client/http/f;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 422
    :cond_1
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-wide/16 v1, -0x1

    if-ne p2, v0, :cond_2

    iget-wide v3, p0, Lcom/roblox/abtesting/a;->i:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    if-ne p2, v0, :cond_4

    iget-wide v3, p0, Lcom/roblox/abtesting/a;->j:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    goto :goto_0

    .line 425
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was not set before getting enrollments for ab tests."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "ABTestManager"

    const-string v0, "Getting enrollments."

    .line 433
    invoke-static {p2, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p2, p0, Lcom/roblox/abtesting/a;->h:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/abtesting/a;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/roblox/abtesting/a$a;)V

    return-void

    .line 418
    :cond_5
    :goto_1
    invoke-interface {p3}, Lcom/roblox/abtesting/a$a;->a()V

    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "NewUsers.SignUpPage.AddEmailToSignup"

    const/4 v1, 0x2

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->USER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 121
    invoke-static {}, Lcom/roblox/client/b;->aB()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/roblox/abtesting/a$a;)V
    .locals 2

    .line 312
    new-instance v0, Lcom/roblox/abtesting/a$2;

    invoke-direct {v0, p0, p1}, Lcom/roblox/abtesting/a$2;-><init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V

    .line 320
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/c;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, p1, v1, v0}, Lcom/roblox/abtesting/a;->a(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/roblox/abtesting/a;->m:Ljava/util/HashSet;

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-virtual {p0, p1, v1, v0}, Lcom/roblox/abtesting/a;->b(Ljava/util/Set;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;Lcom/roblox/abtesting/a$a;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 127
    invoke-static {}, Lcom/roblox/client/b;->aR()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 133
    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 132
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 2

    .line 142
    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Z
    .locals 2

    .line 151
    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 2

    .line 169
    invoke-static {}, Lcom/roblox/client/b;->ba()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 175
    invoke-static {}, Lcom/roblox/client/b;->aZ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 174
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 181
    invoke-static {}, Lcom/roblox/client/b;->bb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    .line 187
    invoke-static {}, Lcom/roblox/client/b;->bc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    .line 193
    invoke-static {}, Lcom/roblox/client/b;->bJ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    .line 199
    invoke-static {}, Lcom/roblox/client/b;->bJ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    .line 205
    invoke-static {}, Lcom/roblox/client/b;->bd()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    .line 211
    invoke-static {}, Lcom/roblox/client/b;->aU()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/roblox/abtesting/a;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public q()Lcom/roblox/client/s/f;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/roblox/abtesting/a;->b:Lcom/roblox/client/s/f$a;

    invoke-interface {v0}, Lcom/roblox/client/s/f$a;->a()Lcom/roblox/client/s/f;

    move-result-object v0

    return-object v0
.end method

.method public r()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/roblox/abtesting/a;->n:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->bb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aU()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->bJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {}, Lcom/roblox/client/b;->bv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/roblox/abtesting/a;->k:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v0, p0, Lcom/roblox/abtesting/a;->l:Ljava/util/HashSet;

    invoke-static {}, Lcom/roblox/client/b;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
