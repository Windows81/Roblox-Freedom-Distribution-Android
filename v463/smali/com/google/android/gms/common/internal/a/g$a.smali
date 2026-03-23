.class public abstract Lcom/google/android/gms/common/internal/a/g$a;
.super Lcom/google/android/gms/internal/d/b;

# interfaces
.implements Lcom/google/android/gms/common/internal/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/a/g$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/a/g;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/a/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/a/g;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/a/g$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/a/g$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/f$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/a/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/a/g$a;->a(Lcom/google/android/gms/common/internal/a/f;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
