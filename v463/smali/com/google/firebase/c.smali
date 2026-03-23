.class public final Lcom/google/firebase/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/common/util/o;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aa;->a(ZLjava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/google/firebase/c;->a:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/google/firebase/c;->c:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/firebase/c;->d:Ljava/lang/String;

    .line 120
    iput-object p5, p0, Lcom/google/firebase/c;->e:Ljava/lang/String;

    .line 121
    iput-object p6, p0, Lcom/google/firebase/c;->f:Ljava/lang/String;

    .line 122
    iput-object p7, p0, Lcom/google/firebase/c;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/c;
    .locals 9

    .line 131
    new-instance v0, Lcom/google/android/gms/common/internal/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/ae;-><init>(Landroid/content/Context;)V

    const-string p0, "google_app_id"

    .line 132
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Lcom/google/firebase/c;

    const-string v1, "google_api_key"

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "firebase_database_url"

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ga_trackingId"

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gcm_defaultSenderId"

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "google_storage_bucket"

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "project_id"

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 194
    instance-of v0, p1, Lcom/google/firebase/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    check-cast p1, Lcom/google/firebase/c;

    .line 198
    iget-object v0, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->a:Ljava/lang/String;

    .line 199
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->c:Ljava/lang/String;

    .line 200
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->d:Ljava/lang/String;

    .line 201
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->e:Ljava/lang/String;

    .line 202
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/c;->f:Ljava/lang/String;

    .line 203
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/c;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/c;->g:Ljava/lang/String;

    .line 204
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->e:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/c;->g:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/y;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 215
    invoke-static {p0}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    const-string v2, "applicationId"

    .line 216
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->a:Ljava/lang/String;

    const-string v2, "apiKey"

    .line 217
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->c:Ljava/lang/String;

    const-string v2, "databaseUrl"

    .line 218
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->e:Ljava/lang/String;

    const-string v2, "gcmSenderId"

    .line 219
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->f:Ljava/lang/String;

    const-string v2, "storageBucket"

    .line 220
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->g:Ljava/lang/String;

    const-string v2, "projectId"

    .line 221
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/y$a;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
