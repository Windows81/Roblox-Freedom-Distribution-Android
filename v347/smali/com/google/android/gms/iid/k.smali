.class abstract Lcom/google/android/gms/iid/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/iid/k;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "SdkFlagFactory.class"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Lcom/google/android/gms/iid/k;
    .locals 2

    const-class v1, Lcom/google/android/gms/iid/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/iid/k;->a:Lcom/google/android/gms/iid/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/iid/e;

    invoke-direct {v0}, Lcom/google/android/gms/iid/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/k;->a:Lcom/google/android/gms/iid/k;

    :cond_0
    sget-object v0, Lcom/google/android/gms/iid/k;->a:Lcom/google/android/gms/iid/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method abstract a(Ljava/lang/String;Z)Lcom/google/android/gms/iid/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/iid/l",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
