.class public abstract Lcom/google/android/gms/common/internal/v$a;
.super Lcom/google/android/gms/internal/d/b;

# interfaces
.implements Lcom/google/android/gms/common/internal/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/v$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/v;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/v;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/v;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/v$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/v$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/common/GoogleCertificatesQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/d/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/GoogleCertificatesQuery;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/v$a;->a(Lcom/google/android/gms/common/GoogleCertificatesQuery;Lcom/google/android/gms/c/a;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/v$a;->b(Ljava/lang/String;Lcom/google/android/gms/c/a;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/v$a;->a(Ljava/lang/String;Lcom/google/android/gms/c/a;)Z

    move-result p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/d/c;->a(Landroid/os/Parcel;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/v$a;->b()Lcom/google/android/gms/c/a;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/v$a;->a()Lcom/google/android/gms/c/a;

    move-result-object p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/d/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_2
    return p4
.end method
