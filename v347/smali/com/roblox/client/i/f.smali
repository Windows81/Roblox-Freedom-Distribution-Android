.class public Lcom/roblox/client/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/roblox/client/i/f;


# instance fields
.field private a:Lcom/roblox/client/purchase/b;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/roblox/client/b;->cc()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/i/f;->b:Z

    .line 39
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/roblox/client/i/f;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/roblox/client/i/f;->c:Lcom/roblox/client/i/f;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/roblox/client/i/f;->c:Lcom/roblox/client/i/f;

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-class v1, Lcom/roblox/client/i/f;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/roblox/client/i/f;->c:Lcom/roblox/client/i/f;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/roblox/client/i/f;

    invoke-direct {v0}, Lcom/roblox/client/i/f;-><init>()V

    sput-object v0, Lcom/roblox/client/i/f;->c:Lcom/roblox/client/i/f;

    .line 49
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    sget-object v0, Lcom/roblox/client/i/f;->c:Lcom/roblox/client/i/f;

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    const-string v0, "Unknown"

    .line 109
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 111
    const/4 v0, 0x1

    aget-object v0, v1, v0

    .line 114
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v1, "Amazon-AppStartup-Version-"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "Android-AppStartup-Version-"

    goto :goto_0
.end method

.method public static a(JJJ)V
    .locals 2

    .prologue
    .line 854
    new-instance v0, Lcom/roblox/client/g/a;

    const-string v1, "AutoLoginFailures"

    invoke-direct {v0, v1}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v1, "initialLoginTimestamp"

    .line 855
    invoke-virtual {v0, v1, p0, p1}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "cookieExpirationTimestamp"

    .line 856
    invoke-virtual {v0, v1, p2, p3}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "expectedCookieExpirationTimestamp"

    .line 857
    invoke-virtual {v0, v1, p4, p5}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 859
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 896
    new-instance v0, Lcom/roblox/client/http/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->ephemeralCounterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/roblox/client/RobloxSettings;->ephemeralCounterParams(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/http/t;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0}, Lcom/roblox/client/http/t;->c()V

    .line 898
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    .line 827
    packed-switch p1, :pswitch_data_0

    .line 832
    const-string v0, "Android-SessionCheck-Failure-UnknownError"

    .line 836
    :goto_0
    const-string v1, "SessionCheck"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v1, "Android-SessionCheck-Failure"

    invoke-static {v1}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 838
    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 839
    invoke-static/range {p0 .. p8}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 840
    return-void

    .line 829
    :pswitch_0
    const-string v0, "Android-SessionCheck-Failure-401-Unauthenticated"

    goto :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    .prologue
    .line 813
    const-string v0, "Login"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "Android-AppLogin-Failure"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 815
    invoke-static {p1}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 816
    const-wide/16 v8, -0x1

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    invoke-static/range {v1 .. v9}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 817
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 439
    new-instance v0, Lcom/roblox/client/g/a;

    invoke-direct {v0, p1}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 440
    invoke-virtual {v0, v1, p2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "requestUrl"

    .line 441
    invoke-virtual {v0, v1, p4}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseBody"

    .line 442
    invoke-virtual {v0, v1, p5}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "username"

    .line 443
    invoke-virtual {v0, v1, p6}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseTimeMs"

    .line 444
    invoke-virtual {v0, v1, p7, p8}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "httpResponseCode"

    .line 445
    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;I)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "signupType"

    .line 446
    invoke-virtual {v0, v1, p9}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 448
    return-void
.end method

.method public static b(I)V
    .locals 3

    .prologue
    .line 778
    invoke-static {}, Lcom/roblox/client/b;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    const-string v0, "Login"

    const-string v1, "Success"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "Android-AppLogin-Success"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    .line 416
    new-instance v0, Lcom/roblox/client/g/a;

    const-string v1, "Android2StepVerificationFailure"

    invoke-direct {v0, v1}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 417
    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "requestUrl"

    .line 418
    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "httpResponseCode"

    .line 419
    invoke-virtual {v0, v1, p2}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;I)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseBody"

    .line 420
    invoke-virtual {v0, v1, p4}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "username"

    .line 421
    invoke-virtual {v0, v1, p5}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseTimeMs"

    .line 422
    invoke-virtual {v0, v1, p6, p7}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 423
    const-wide/16 v2, 0x0

    cmp-long v1, p8, v2

    if-ltz v1, :cond_0

    .line 424
    const-string v1, "timeSinceLastLoginMs"

    invoke-virtual {v0, v1, p8, p9}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    .line 426
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 427
    return-void
.end method

.method public static c(I)V
    .locals 3

    .prologue
    .line 787
    invoke-static {}, Lcom/roblox/client/b;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 791
    :cond_0
    const-string v0, "SessionCheck"

    const-string v1, "Success"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "Android-SessionCheck-Success"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;I)V

    .line 893
    return-void
.end method

.method private static c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5

    .prologue
    .line 874
    const-string v0, "loginType"

    .line 876
    new-instance v0, Lcom/roblox/client/g/a;

    const-string v1, "LoginFailure"

    invoke-direct {v0, v1}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 877
    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "loginType"

    const-string v2, "loginType"

    .line 878
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "requestUrl"

    .line 879
    invoke-virtual {v0, v1, p2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "httpResponseCode"

    .line 880
    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;I)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseBody"

    .line 881
    invoke-virtual {v0, v1, p3}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "username"

    .line 882
    invoke-virtual {v0, v1, p4}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "responseTimeMs"

    .line 883
    invoke-virtual {v0, v1, p5, p6}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 884
    const-wide/16 v2, 0x0

    cmp-long v1, p7, v2

    if-ltz v1, :cond_0

    .line 885
    const-string v1, "timeSinceLastLoginMs"

    invoke-virtual {v0, v1, p7, p8}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;J)Lcom/roblox/client/g/a;

    .line 887
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 888
    return-void
.end method

.method public static d(I)V
    .locals 3

    .prologue
    .line 843
    invoke-static {}, Lcom/roblox/client/b;->w()Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 848
    :cond_0
    const-string v0, "SignupAttempt"

    const-string v1, "Success"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v0, "Android-AppSignup-Success"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 400
    const-string v0, "TwoStepVerification"

    const-string v1, "Success"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "Android-App2SV-Success"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public a(Lcom/roblox/client/purchase/b;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12

    .prologue
    .line 431
    const-string v0, "SignupAttempt"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "Android-AppSignup-Failure"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 435
    const-string v2, "SignupFailureAndroid"

    const-string v10, "regular"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 436
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/roblox/client/http/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->ephemeralSequenceStatsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-static {p1, p2, p3}, Lcom/roblox/client/RobloxSettings;->ephemeralSequenceStatsParams(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/http/t;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/roblox/client/http/t;->c()V

    .line 63
    iget-boolean v0, p0, Lcom/roblox/client/i/f;->b:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;J)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 457
    const-string v0, "Login"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v0, "Android-AppLogin-Failure"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 459
    invoke-static {p2}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V
    .locals 10

    .prologue
    .line 405
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 407
    const-string v0, "TwoStepVerification"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "Android-App2SV-Failure"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->d()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 409
    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/i/f;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 411
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Lcom/roblox/client/i/d;->a()Lcom/roblox/client/i/d;

    move-result-object v0

    .line 396
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v1

    .line 395
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/roblox/client/i/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 397
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lcom/roblox/client/g/a;

    const-string v0, "Android-RobloxPlayer-SessionReport-Inferred"

    invoke-direct {v1, v0}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const-string v2, "Session"

    if-eqz p1, :cond_0

    const-string v0, "Crash"

    .line 89
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 92
    if-eqz p1, :cond_1

    const-string v0, "Android-ROBLOXPlayer-Session-Inferred-Crash"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 95
    return-void

    .line 88
    :cond_0
    const-string v0, "Success"

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "Android-ROBLOXPlayer-Session-Inferred-Success"

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 152
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Mobile-Payments-PurchaseStarted-InApp-Amazon"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 156
    return-void

    .line 152
    :cond_0
    const-string v0, "Mobile-Payments-PurchaseStarted-InApp-Android"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Mobile-Payments-PurchaseStarted-InGame-Amazon"

    goto :goto_0

    :cond_2
    const-string v0, "Mobile-Payments-PurchaseStarted-InGame-Android"

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/roblox/client/i/f;->a()Lcom/roblox/client/i/f;

    move-result-object v1

    .line 99
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mobile-DownloadCount-Amazon"

    .line 98
    :goto_0
    invoke-virtual {v1, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 102
    return-void

    .line 99
    :cond_0
    const-string v0, "Mobile-DownloadCount-Android"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 135
    const-string v0, "rbx.purchaseflow"

    invoke-static {v0, p1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    iget v1, v0, Lcom/roblox/client/purchase/b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/roblox/client/purchase/b;->d:I

    .line 138
    new-instance v0, Lcom/roblox/client/g/a;

    const-string v1, "Android-PurchaseFlow"

    invoke-direct {v0, v1}, Lcom/roblox/client/g/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcom/roblox/client/g/a;->a(Z)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "Username"

    iget-object v2, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    iget-object v2, v2, Lcom/roblox/client/purchase/b;->a:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "InAppPurchase"

    iget-object v2, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    iget-boolean v2, v2, Lcom/roblox/client/purchase/b;->c:Z

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;Z)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "ProductId"

    iget-object v2, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    iget-object v2, v2, Lcom/roblox/client/purchase/b;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "Message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/roblox/client/i/f;->a:Lcom/roblox/client/purchase/b;

    iget v3, v3, Lcom/roblox/client/purchase/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    const-string v1, "Rooted"

    .line 146
    invoke-static {}, Lcom/roblox/client/c;->a()Lcom/roblox/client/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/c;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/g/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/g/a;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/roblox/client/g/a;->b()Lcom/roblox/client/datastructures/c;

    .line 149
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    :try_start_0
    const-string v1, "featureName"

    const-string v2, "Mobile"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "measureName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "value"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v1, Lcom/roblox/client/http/t;

    .line 79
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->ephemeralSequenceStatsWithCountryCodeUrl()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 82
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getJsonContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/roblox/client/http/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/m;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/roblox/client/http/t;->c()V

    .line 85
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 236
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-IABLaunchPurchaseFlow-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 240
    return-void

    .line 236
    :cond_0
    const-string v0, "Android-Payments-IABLaunchPurchaseFlow-InGame"

    goto :goto_0
.end method

.method public b(ZZ)V
    .locals 1

    .prologue
    .line 159
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PurchaseSuccess-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 163
    return-void

    .line 159
    :cond_0
    const-string v0, "Android-Payments-PurchaseSuccess-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PurchaseSuccess-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PurchaseSuccess-InGame"

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/roblox/client/util/h;->a()Z

    move-result v0

    .line 122
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 124
    if-eqz v0, :cond_0

    const-string v0, "Amazon-AppStartup-Version-Total"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 128
    return-void

    .line 124
    :cond_0
    const-string v0, "Android-AppStartup-Version-Total"

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 243
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-IABConsumeError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 247
    return-void

    .line 243
    :cond_0
    const-string v0, "Android-Payments-IABConsumeError-InGame"

    goto :goto_0
.end method

.method public c(ZZ)V
    .locals 1

    .prologue
    .line 166
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PurchaseFailed-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 170
    return-void

    .line 166
    :cond_0
    const-string v0, "Android-Payments-PurchaseFailed-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PurchaseFailed-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PurchaseFailed-InGame"

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "Android-Payments-Api-V1-Precheck-Request"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 250
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-IABHandleActivityError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 254
    return-void

    .line 250
    :cond_0
    const-string v0, "Android-Payments-IABHandleActivityError-InGame"

    goto :goto_0
.end method

.method public d(ZZ)V
    .locals 1

    .prologue
    .line 173
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PurchaseCancelled-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 177
    return-void

    .line 173
    :cond_0
    const-string v0, "Android-Payments-PurchaseCancelled-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PurchaseCancelled-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PurchaseCancelled-InGame"

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 286
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-200"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 257
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-IABGrantPendingError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 261
    return-void

    .line 257
    :cond_0
    const-string v0, "Android-Payments-IABGrantPendingError-InGame"

    goto :goto_0
.end method

.method public e(ZZ)V
    .locals 1

    .prologue
    .line 180
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PurchaseFlooded-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 184
    return-void

    .line 180
    :cond_0
    const-string v0, "Android-Payments-PurchaseFlooded-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PurchaseFlooded-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PurchaseFlooded-InGame"

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-400"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 264
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-ConsumeError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 268
    return-void

    .line 264
    :cond_0
    const-string v0, "Android-Payments-ConsumeError-InGame"

    goto :goto_0
.end method

.method public f(ZZ)V
    .locals 1

    .prologue
    .line 187
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PrecheckError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 191
    return-void

    .line 187
    :cond_0
    const-string v0, "Android-Payments-PrecheckError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PrecheckError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PrecheckError-InGame"

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 300
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-401"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 272
    if-eqz p1, :cond_0

    const-string v0, "Android-Payments-GetPriceError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 276
    return-void

    .line 272
    :cond_0
    const-string v0, "Android-Payments-GetPriceError-InGame"

    goto :goto_0
.end method

.method public g(ZZ)V
    .locals 1

    .prologue
    .line 194
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PrecheckRetry-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 198
    return-void

    .line 194
    :cond_0
    const-string v0, "Android-Payments-PrecheckRetry-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PrecheckRetry-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PrecheckRetry-InGame"

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 307
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-403"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public h(ZZ)V
    .locals 1

    .prologue
    .line 201
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PrecheckBalanceError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 205
    return-void

    .line 201
    :cond_0
    const-string v0, "Android-Payments-PrecheckBalanceError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PrecheckBalanceError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PrecheckBalanceError-InGame"

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-404"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public i(ZZ)V
    .locals 1

    .prologue
    .line 208
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-PrecheckUnknownError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 212
    return-void

    .line 208
    :cond_0
    const-string v0, "Android-Payments-PrecheckUnknownError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-PrecheckUnknownError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-PrecheckUnknownError-InGame"

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 321
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-429"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public j(ZZ)V
    .locals 1

    .prologue
    .line 215
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-VerificationError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 219
    return-void

    .line 215
    :cond_0
    const-string v0, "Android-Payments-VerificationError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-VerificationError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-VerificationError-InGame"

    goto :goto_0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 328
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-500"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public k(ZZ)V
    .locals 1

    .prologue
    .line 222
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-VerificationEmptyError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 226
    return-void

    .line 222
    :cond_0
    const-string v0, "Android-Payments-VerificationEmptyError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-VerificationEmptyError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-VerificationEmptyError-InGame"

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 335
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-503"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public l(ZZ)V
    .locals 1

    .prologue
    .line 229
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Amazon-Payments-VerificationUnknownError-InApp"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 233
    return-void

    .line 229
    :cond_0
    const-string v0, "Android-Payments-VerificationUnknownError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "Amazon-Payments-VerificationUnknownError-InGame"

    goto :goto_0

    :cond_2
    const-string v0, "Android-Payments-VerificationUnknownError-InGame"

    goto :goto_0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 342
    const-string v0, "Android-Payments-Api-V1-Precheck-Response-Unknown"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 349
    const-string v0, "Android-Payments-Api-V1-Verify-Request"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 356
    const-string v0, "Android-Payments-Api-V1-Verify-Response-200"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 363
    const-string v0, "Android-Payments-Api-V1-Verify-Response-400"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 370
    const-string v0, "Android-Payments-Api-V1-Verify-Response-401"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public r()V
    .locals 1

    .prologue
    .line 377
    const-string v0, "Android-Payments-Api-V1-Verify-Response-500"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 384
    const-string v0, "Android-Payments-Api-V1-Verify-Response-Unknown"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 391
    const-string v0, "Android-Payments-PurchaseIsEmulator"

    invoke-virtual {p0, v0}, Lcom/roblox/client/i/f;->a(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 451
    const-string v0, "Login"

    const-string v1, "Success"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "Android-AppLogin-Success"

    invoke-static {v0}, Lcom/roblox/client/i/f;->c(Ljava/lang/String;)V

    .line 453
    return-void
.end method
