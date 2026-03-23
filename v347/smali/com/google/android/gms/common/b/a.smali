.class public Lcom/google/android/gms/common/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/b/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/b/a$a;


# direct methods
.method public static declared-synchronized a()Lcom/google/android/gms/common/b/a$a;
    .locals 2

    const-class v1, Lcom/google/android/gms/common/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/b/a;->b()Lcom/google/android/gms/common/b/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/b/a;->a:Lcom/google/android/gms/common/b/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/google/android/gms/common/b/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/b/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/b/b;-><init>()V

    return-object v0
.end method
