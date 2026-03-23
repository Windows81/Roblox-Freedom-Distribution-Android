.class public Lcom/roblox/client/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/f$a;,
        Lcom/roblox/client/f$b;,
        Lcom/roblox/client/f$c;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/SharedPreferences;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/roblox/client/g;

.field private g:Lcom/roblox/client/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "libfmod.so"

    const-string v1, "libroblox.so"

    const-string v2, "libtrampoline.so"

    .line 43
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/f;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/roblox/client/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/f$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/roblox/client/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/f;Lcom/roblox/client/f$b;)Lcom/roblox/client/f$b;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/roblox/client/f;->g:Lcom/roblox/client/f$b;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/f;Lcom/roblox/client/g;)Lcom/roblox/client/g;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/roblox/client/f;->f:Lcom/roblox/client/g;

    return-object p1
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 224
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 225
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_2

    .line 230
    :cond_0
    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v0, v6

    .line 231
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v4

    :cond_1
    const-string v8, "-"

    const-string v9, "_"

    .line 234
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/roblox/client/f;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/roblox/client/f;->d:I

    if-lez v1, :cond_0

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/roblox/client/f;->d:I

    const-string v2, "latest_copied_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/roblox/client/f$c;->a()Lcom/roblox/client/f;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 185
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "CrashLibFileHelper"

    const/16 v4, 0x15

    if-lt v2, v4, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 187
    invoke-static {v2}, Lcom/roblox/client/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 188
    iget-object v1, v0, Lcom/roblox/client/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-direct {v0, p0}, Lcom/roblox/client/f;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 194
    new-instance p0, Lcom/roblox/client/f$a;

    invoke-direct {p0, p2, v2, v0}, Lcom/roblox/client/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/f;)V

    new-array p2, v4, [[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 195
    invoke-virtual {p0, p2}, Lcom/roblox/client/f$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p0, "SO files copied."

    .line 197
    invoke-static {v3, p0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {v0, p2}, Lcom/roblox/client/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Helper inited."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "Use the native lib path."

    .line 201
    invoke-static {v3, p0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/roblox/client/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/roblox/client/f$b;)V
    .locals 3

    .line 212
    const-class v0, Lcom/roblox/client/f;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/roblox/client/f$c;->a()Lcom/roblox/client/f;

    move-result-object v1

    .line 214
    iget-object v2, v1, Lcom/roblox/client/f;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/roblox/client/f;->f:Lcom/roblox/client/g;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iput-object p0, v1, Lcom/roblox/client/f;->g:Lcom/roblox/client/f$b;

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/roblox/client/f;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/roblox/client/f;->f:Lcom/roblox/client/g;

    invoke-interface {p0, v2, v1}, Lcom/roblox/client/f$b;->a(Ljava/lang/String;Lcom/roblox/client/g;)V

    .line 219
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/roblox/client/f;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/roblox/client/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/f;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/roblox/client/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 245
    const-class v0, Lcom/roblox/client/f;

    monitor-enter v0

    .line 246
    :try_start_0
    iput-object p1, p0, Lcom/roblox/client/f;->e:Ljava/lang/String;

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 253
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "crash_lib_file_helper"

    .line 261
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 262
    iput-object p1, p0, Lcom/roblox/client/f;->c:Landroid/content/SharedPreferences;

    .line 263
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/roblox/client/f;->d:I

    const-string v2, "latest_copied_version"

    .line 264
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 265
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CrashLibFileHelper"

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/f;)Lcom/roblox/client/f$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/roblox/client/f;->g:Lcom/roblox/client/f$b;

    return-object p0
.end method

.method static synthetic c(Lcom/roblox/client/f;)Lcom/roblox/client/g;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/roblox/client/f;->f:Lcom/roblox/client/g;

    return-object p0
.end method
