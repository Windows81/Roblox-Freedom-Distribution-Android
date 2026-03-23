.class public Lio/chirp/connect/analytics/ClientID;
.super Ljava/lang/Object;


# instance fields
.field private filename:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "chirp-uuid"

    iput-object v0, p0, Lio/chirp/connect/analytics/ClientID;->filename:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/chirp/connect/analytics/ClientID;->uuidExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/chirp/connect/analytics/ClientID;->createUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/chirp/connect/analytics/ClientID;->readUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    return-void
.end method

.method private createUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    iget-object v0, p0, Lio/chirp/connect/analytics/ClientID;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    iget-object v0, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    iget-object p1, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    return-object p1
.end method

.method private readUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    iget-object v1, p0, Lio/chirp/connect/analytics/ClientID;->filename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    return-object p1
.end method

.method private uuidExists(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/analytics/ClientID;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/chirp/connect/analytics/ClientID;->uuid:Ljava/lang/String;

    return-object v0
.end method
