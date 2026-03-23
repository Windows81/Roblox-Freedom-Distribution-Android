.class public Lcom/roblox/client/s/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/s/f$a;
    }
.end annotation


# static fields
.field private static c:Lcom/roblox/client/s/f;


# instance fields
.field private a:Lcom/roblox/client/purchase/d;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {}, Lcom/roblox/client/b;->bi()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/roblox/client/s/f;->b:Z

    return-void
.end method

.method public static a()Lcom/roblox/client/s/f$a;
    .locals 1

    .line 42
    new-instance v0, Lcom/roblox/client/s/f$1;

    invoke-direct {v0}, Lcom/roblox/client/s/f$1;-><init>()V

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "\\."

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 136
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 137
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-string p0, "Unknown"

    .line 140
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "Amazon-AppStartup-Version-"

    goto :goto_1

    :cond_1
    const-string p1, "Android-AppStartup-Version-"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JJJ)V
    .locals 2

    .line 1062
    new-instance v0, Lcom/roblox/client/o/a;

    const-string v1, "AutoLoginFailures"

    invoke-direct {v0, v1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string v1, "initialLoginTimestamp"

    .line 1063
    invoke-virtual {v0, v1, p0, p1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p1, "cookieExpirationTimestamp"

    .line 1064
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p1, "expectedCookieExpirationTimestamp"

    .line 1065
    invoke-virtual {p0, p1, p4, p5}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p0

    .line 1066
    invoke-virtual {p0}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 3

    .line 1104
    new-instance v0, Lcom/roblox/client/http/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->al()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/roblox/client/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0}, Lcom/roblox/client/http/r;->c()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const-string v0, "Android-SessionCheck-Failure-UnknownError"

    goto :goto_0

    :cond_0
    const-string v0, "Android-SessionCheck-Failure-401-Unauthenticated"

    .line 1039
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionCheck"

    invoke-static {v2, p0, v1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Android-SessionCheck-Failure"

    .line 1040
    invoke-static {v1}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    .line 1041
    invoke-static {v0}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    .line 1042
    invoke-static/range {p0 .. p8}, Lcom/roblox/client/s/f;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    const/4 p0, -0x1

    const-string p3, "sessionCheck"

    .line 1043
    invoke-static {p3, p2, p1, p0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 493
    new-instance v0, Lcom/roblox/client/o/a;

    invoke-direct {v0, p1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string p1, "Status"

    .line 494
    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "requestUrl"

    .line 495
    invoke-virtual {p1, p2, p4}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "responseBody"

    .line 496
    invoke-virtual {p1, p2, p5}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "username"

    .line 497
    invoke-virtual {p1, p2, p6}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "responseTimeMs"

    .line 498
    invoke-virtual {p1, p2, p7, p8}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "httpResponseCode"

    .line 499
    invoke-virtual {p1, p2, p3}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;I)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "signupType"

    .line 500
    invoke-virtual {p1, p2, p9}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    return-void
.end method

.method public static b()Lcom/roblox/client/s/f;
    .locals 2

    .line 60
    sget-object v0, Lcom/roblox/client/s/f;->c:Lcom/roblox/client/s/f;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    const-class v0, Lcom/roblox/client/s/f;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/roblox/client/s/f;->c:Lcom/roblox/client/s/f;

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Lcom/roblox/client/s/f;

    invoke-direct {v1}, Lcom/roblox/client/s/f;-><init>()V

    sput-object v1, Lcom/roblox/client/s/f;->c:Lcom/roblox/client/s/f;

    .line 68
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lcom/roblox/client/s/f;->c:Lcom/roblox/client/s/f;

    return-object v0

    :catchall_0
    move-exception v1

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static b(I)V
    .locals 2

    .line 1013
    invoke-static {}, Lcom/roblox/client/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1017
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SessionCheck"

    const-string v1, "Success"

    invoke-static {v0, v1, p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string v0, "Android-SessionCheck-Success"

    .line 1018
    invoke-static {v0, p0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;I)V

    const-string p0, "success"

    .line 1019
    invoke-static {p0}, Lcom/roblox/client/s/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 469
    new-instance v0, Lcom/roblox/client/o/a;

    const-string v1, "Android2StepVerificationFailure"

    invoke-direct {v0, v1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 470
    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string v0, "requestUrl"

    .line 471
    invoke-virtual {p1, v0, p3}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p3, "httpResponseCode"

    .line 472
    invoke-virtual {p1, p3, p2}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;I)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "responseBody"

    .line 473
    invoke-virtual {p1, p2, p4}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "username"

    .line 474
    invoke-virtual {p1, p2, p5}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    const-string p2, "responseTimeMs"

    .line 475
    invoke-virtual {p1, p2, p6, p7}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p1

    const-wide/16 p2, 0x0

    cmp-long p4, p8, p2

    if-ltz p4, :cond_0

    const-string p2, "timeSinceLastLoginMs"

    .line 477
    invoke-virtual {p1, p2, p8, p9}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    .line 479
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 1051
    invoke-static {}, Lcom/roblox/client/b;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1056
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SignupAttempt"

    const-string v1, "Success"

    invoke-static {v0, v1, p0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string v0, "Android-AppSignup-Success"

    .line 1058
    invoke-static {v0, p0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionCheck"

    .line 1047
    invoke-static {p0, v0}, Lcom/roblox/client/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 1084
    new-instance v0, Lcom/roblox/client/o/a;

    const-string v1, "LoginFailure"

    invoke-direct {v0, v1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 1085
    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string v0, "loginType"

    .line 1086
    invoke-virtual {p0, v0, v0}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string v0, "requestUrl"

    .line 1087
    invoke-virtual {p0, v0, p2}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p2, "httpResponseCode"

    .line 1088
    invoke-virtual {p0, p2, p1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;I)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p1, "responseBody"

    .line 1089
    invoke-virtual {p0, p1, p3}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p1, "username"

    .line 1090
    invoke-virtual {p0, p1, p4}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p0

    const-string p1, "responseTimeMs"

    .line 1091
    invoke-virtual {p0, p1, p5, p6}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    move-result-object p0

    const-wide/16 p1, 0x0

    cmp-long p3, p7, p1

    if-ltz p3, :cond_0

    const-string p1, "timeSinceLastLoginMs"

    .line 1093
    invoke-virtual {p0, p1, p7, p8}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;J)Lcom/roblox/client/o/a;

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1100
    invoke-static {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private x()V
    .locals 5

    .line 159
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/j;->i()Lcom/roblox/client/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/j$a;->name()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/roblox/client/ae/l;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "Android-%s-Architecture-%s"

    .line 161
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "Android-%s-Architecture-Total"

    .line 162
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TwoStepVerification"

    const-string v1, "Success"

    invoke-static {v0, v1, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Android-App2SV-Success"

    .line 454
    invoke-static {p1}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 448
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->f()Lcom/roblox/client/s/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/s/d;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/roblox/client/purchase/d;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-static {p1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 77
    new-instance v0, Lcom/roblox/client/http/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-static {}, Lcom/roblox/client/u;->am()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p1, p2, p3}, Lcom/roblox/client/u;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/roblox/client/http/r;->c()V

    .line 82
    iget-boolean v0, p0, Lcom/roblox/client/s/f;->b:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 511
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Login"

    invoke-static {v0, p1, p3}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Android-AppLogin-Failure"

    .line 512
    invoke-static {p1}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    .line 513
    invoke-static {p2}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12

    .line 484
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SignupAttempt"

    move-object v4, p2

    invoke-static {v1, p2, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {p1}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    const-string v0, "Android-AppSignup-Failure"

    .line 487
    invoke-static {v0}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    const-string v3, "SignupFailureAndroid"

    const-string v11, "regular"

    move-object v2, p0

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    .line 489
    invoke-direct/range {v2 .. v11}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V
    .locals 10

    .line 458
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->b()I

    move-result v2

    .line 460
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoStepVerification"

    invoke-static {v1, p1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Android-App2SV-Failure"

    .line 461
    invoke-static {v0}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v4

    .line 463
    invoke-virtual {p3}, Lcom/roblox/client/http/j;->e()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 462
    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/s/f;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 442
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/l;->f()Lcom/roblox/client/s/d;

    move-result-object v0

    .line 443
    invoke-static {}, Lcom/roblox/client/ae/l;->a()Z

    move-result v1

    .line 442
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/roblox/client/s/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 114
    new-instance v0, Lcom/roblox/client/o/a;

    const-string v1, "Android-RobloxPlayer-SessionReport-Inferred"

    invoke-direct {v0, v1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "Crash"

    goto :goto_0

    :cond_0
    const-string v1, "Success"

    :goto_0
    const-string v2, "Session"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    if-eqz p1, :cond_1

    const-string p1, "Android-ROBLOXPlayer-Session-Inferred-Crash"

    goto :goto_1

    :cond_1
    const-string p1, "Android-ROBLOXPlayer-Session-Inferred-Success"

    .line 118
    :goto_1
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Mobile-Payments-PurchaseStarted-InApp-Amazon"

    goto :goto_0

    :cond_0
    const-string p1, "Mobile-Payments-PurchaseStarted-InApp-Android"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Mobile-Payments-PurchaseStarted-InGame-Amazon"

    goto :goto_0

    :cond_2
    const-string p1, "Mobile-Payments-PurchaseStarted-InGame-Android"

    .line 199
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "rbx.purchaseflow"

    .line 182
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    if-eqz v0, :cond_0

    .line 184
    iget v1, v0, Lcom/roblox/client/purchase/d;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/roblox/client/purchase/d;->d:I

    .line 185
    new-instance v0, Lcom/roblox/client/o/a;

    const-string v1, "Android-PurchaseFlow"

    invoke-direct {v0, v1}, Lcom/roblox/client/o/a;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v2}, Lcom/roblox/client/o/a;->a(Z)Lcom/roblox/client/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    iget-object v1, v1, Lcom/roblox/client/purchase/d;->a:Ljava/lang/String;

    const-string v2, "Username"

    .line 189
    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    iget-boolean v1, v1, Lcom/roblox/client/purchase/d;->c:Z

    const-string v2, "InAppPurchase"

    .line 190
    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Z)Lcom/roblox/client/o/a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    iget-object v1, v1, Lcom/roblox/client/purchase/d;->b:Ljava/lang/String;

    const-string v2, "ProductId"

    .line 191
    invoke-virtual {v0, v2, v1}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/s/f;->a:Lcom/roblox/client/purchase/d;

    iget v2, v2, Lcom/roblox/client/purchase/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Message"

    .line 192
    invoke-virtual {v0, v1, p1}, Lcom/roblox/client/o/a;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/roblox/client/j;->a()Lcom/roblox/client/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/j;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Rooted"

    invoke-virtual {p1, v1, v0}, Lcom/roblox/client/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/roblox/client/o/a;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/roblox/client/o/a;->b()Lcom/roblox/client/datastructures/c;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 3

    .line 88
    invoke-static {}, Lcom/roblox/client/x/c;->k()Z

    move-result v0

    const-string v1, "Mobile"

    if-eqz v0, :cond_0

    long-to-double p2, p2

    .line 90
    invoke-static {v1, p1, p2, p3}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeReportToDiagByCountryCode(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "featureName"

    .line 96
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "measureName"

    .line 97
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    new-instance p1, Lcom/roblox/client/http/r;

    .line 104
    invoke-static {}, Lcom/roblox/client/u;->an()Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 107
    invoke-static {}, Lcom/roblox/client/u;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/roblox/client/http/r;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/m;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/roblox/client/http/r;->c()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-IABLaunchPurchaseFlow-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-IABLaunchPurchaseFlow-InGame"

    .line 283
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PurchaseSuccess-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PurchaseSuccess-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PurchaseSuccess-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PurchaseSuccess-InGame"

    .line 206
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 124
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/roblox/client/ae/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mobile-DownloadCount-Amazon"

    goto :goto_0

    :cond_0
    const-string v1, "Mobile-DownloadCount-Android"

    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-IABConsumeError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-IABConsumeError-InGame"

    .line 290
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PurchaseFailed-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PurchaseFailed-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PurchaseFailed-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PurchaseFailed-InGame"

    .line 213
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/roblox/client/b;->cg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/ae/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/roblox/client/s/f;->x()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-IABHandleActivityError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-IABHandleActivityError-InGame"

    .line 297
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PurchaseCancelled-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PurchaseCancelled-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PurchaseCancelled-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PurchaseCancelled-InGame"

    .line 220
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method e()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/roblox/client/ae/l;->a()Z

    move-result v0

    .line 169
    invoke-static {}, Lcom/roblox/client/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "Amazon-AppStartup-Version-Total"

    goto :goto_0

    :cond_0
    const-string v0, "Android-AppStartup-Version-Total"

    .line 171
    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-IABGrantPendingError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-IABGrantPendingError-InGame"

    .line 304
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PurchaseFlooded-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PurchaseFlooded-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PurchaseFlooded-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PurchaseFlooded-InGame"

    .line 227
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Request"

    .line 326
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-ConsumeError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-ConsumeError-InGame"

    .line 311
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PrecheckError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PrecheckError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PrecheckError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PrecheckError-InGame"

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-200"

    .line 333
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Android-Payments-GetPriceError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-GetPriceError-InGame"

    .line 319
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PrecheckRetry-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PrecheckRetry-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PrecheckRetry-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PrecheckRetry-InGame"

    .line 241
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-400"

    .line 340
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PrecheckBalanceError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PrecheckBalanceError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PrecheckBalanceError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PrecheckBalanceError-InGame"

    .line 248
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-401"

    .line 347
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public i(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-PrecheckUnknownError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-PrecheckUnknownError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-PrecheckUnknownError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-PrecheckUnknownError-InGame"

    .line 255
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-403"

    .line 354
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-VerificationError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-VerificationError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-VerificationError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-VerificationError-InGame"

    .line 262
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-404"

    .line 361
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-VerificationEmptyError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-VerificationEmptyError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-VerificationEmptyError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-VerificationEmptyError-InGame"

    .line 269
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-429"

    .line 368
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public l(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "Amazon-Payments-VerificationUnknownError-InApp"

    goto :goto_0

    :cond_0
    const-string p1, "Android-Payments-VerificationUnknownError-InApp"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Amazon-Payments-VerificationUnknownError-InGame"

    goto :goto_0

    :cond_2
    const-string p1, "Android-Payments-VerificationUnknownError-InGame"

    .line 276
    :goto_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-500"

    .line 375
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-503"

    .line 382
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Precheck-Response-Unknown"

    .line 389
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Request"

    .line 396
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public q()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Response-200"

    .line 403
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Response-400"

    .line 410
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Response-401"

    .line 417
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Response-500"

    .line 424
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .locals 1

    const-string v0, "Android-Payments-Api-V1-Verify-Response-Unknown"

    .line 431
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 1

    const-string v0, "Android-Payments-PurchaseIsEmulator"

    .line 438
    invoke-virtual {p0, v0}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 3

    const/16 v0, 0xc8

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login"

    const-string v2, "Success"

    invoke-static {v1, v2, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Android-AppLogin-Success"

    .line 506
    invoke-static {v0}, Lcom/roblox/client/s/f;->d(Ljava/lang/String;)V

    return-void
.end method
