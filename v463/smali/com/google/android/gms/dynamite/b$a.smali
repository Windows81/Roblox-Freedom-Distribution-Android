.class public abstract Lcom/google/android/gms/dynamite/b$a;
.super Lcom/google/android/gms/internal/d/b;

# interfaces
.implements Lcom/google/android/gms/dynamite/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/b$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamite/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/dynamite/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/dynamite/b;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/dynamite/b$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamite/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/dynamite/b$a;->a(Lcom/google/android/gms/c/a;Ljava/lang/String;ILcom/google/android/gms/c/a;)Lcom/google/android/gms/c/a;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/c/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/dynamite/b$a;->a(Lcom/google/android/gms/c/a;Ljava/lang/String;[B)Lcom/google/android/gms/c/a;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/d/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return p4
.end method
