.class public Lio/chirp/connect/helpers/SettingsContentObserver;
.super Landroid/database/ContentObserver;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private oldVolume:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/chirp/connect/interfaces/ConnectEventListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->observers:Ljava/util/List;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->audioManager:Landroid/media/AudioManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->oldVolume:I

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget v0, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->oldVolume:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/chirp/connect/interfaces/ConnectEventListener;

    iget v2, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->oldVolume:I

    invoke-interface {v1, v2, p1}, Lio/chirp/connect/interfaces/ConnectEventListener;->onSystemVolumeChanged(II)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lio/chirp/connect/helpers/SettingsContentObserver;->oldVolume:I

    :cond_1
    return-void
.end method
