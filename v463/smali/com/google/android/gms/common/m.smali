.class public Lcom/google/android/gms/common/m;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/m;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/m;->b:Landroid/content/Context;

    return-void
.end method

.method private static varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/g$a;)Lcom/google/android/gms/common/g$a;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/q;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/q;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/g$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/m;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/m;->a:Lcom/google/android/gms/common/m;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/m;->a:Lcom/google/android/gms/common/m;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/m;->a:Lcom/google/android/gms/common/m;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/common/v;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/m;->b(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1

    :catch_0
    nop

    const-string v0, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/v;->a(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1
.end method

.method private final b(I)Lcom/google/android/gms/common/v;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->b(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/d/b;->a(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/m;->a(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object v0

    iget-boolean v3, v0, Lcom/google/android/gms/common/v;->a:Z

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/v;->a(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1
.end method

.method private final b(Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/common/v;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_0

    const-string p1, "null pkg"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/v;->a(Ljava/lang/String;)Lcom/google/android/gms/common/v;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p1, "single cert required"

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/q;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/q;-><init>([B)V

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/common/g;->a(Ljava/lang/String;Lcom/google/android/gms/common/g$a;Z)Lcom/google/android/gms/common/v;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/common/v;->a:Z

    if-eqz v5, :cond_3

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/g;->a(Ljava/lang/String;Lcom/google/android/gms/common/g$a;Z)Lcom/google/android/gms/common/v;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/common/v;->a:Z

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "debuggable release cert app rejected"

    goto :goto_0

    :cond_3
    return-object v4
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/m;->b(I)Lcom/google/android/gms/common/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/v;->c()V

    iget-boolean p1, p1, Lcom/google/android/gms/common/v;->a:Z

    return p1
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/m;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/m;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/m;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/l;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/common/s;->a:[Lcom/google/android/gms/common/g$a;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/m;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/g$a;)Lcom/google/android/gms/common/g$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p2, v1, [Lcom/google/android/gms/common/g$a;

    sget-object v2, Lcom/google/android/gms/common/s;->a:[Lcom/google/android/gms/common/g$a;

    aget-object v2, v2, v0

    aput-object v2, p2, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/common/m;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/g$a;)Lcom/google/android/gms/common/g$a;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0
.end method
