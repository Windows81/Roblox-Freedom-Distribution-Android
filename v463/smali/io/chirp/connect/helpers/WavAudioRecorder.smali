.class public Lio/chirp/connect/helpers/WavAudioRecorder;
.super Ljava/lang/Object;


# instance fields
.field private bitsPerSample:I

.field private context:Landroid/content/Context;

.field private outputDir:Ljava/io/File;

.field private wavFilename:Ljava/lang/String;

.field private wavOutputFile:Ljava/io/File;

.field wavOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->bitsPerSample:I

    iput-object p2, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavFilename:Ljava/lang/String;

    iput-object p1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->context:Landroid/content/Context;

    iput-object p3, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->outputDir:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unable to create output directory."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static broadCastToMediaScanner(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private calculatePayloadSize(IIF)I
    .locals 0

    mul-int p1, p1, p2

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private writeInt(Ljava/io/DataOutputStream;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x18

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method private writeShort(Ljava/io/DataOutputStream;S)V
    .locals 1

    shr-int/lit8 v0, p2, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write(I)V

    shr-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method private writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public closeWav()V
    .locals 2

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputFile:Ljava/io/File;

    invoke-static {v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->broadCastToMediaScanner(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public createWav(IF)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->outputDir:Ljava/io/File;

    iget-object v2, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputFile:Ljava/io/File;

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    iget v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->bitsPerSample:I

    invoke-direct {p0, v0, p1, p2}, Lio/chirp/connect/helpers/WavAudioRecorder;->calculatePayloadSize(IIF)I

    move-result p2

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "RIFF"

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    add-int/lit8 v1, p2, 0x24

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "WAVE"

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const-string v1, "fmt "

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeShort(Ljava/io/DataOutputStream;S)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, v0, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeShort(Ljava/io/DataOutputStream;S)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, v0, p1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, v0, p1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeInt(Ljava/io/DataOutputStream;I)V

    iget-object p1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, v1}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeShort(Ljava/io/DataOutputStream;S)V

    iget-object p1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    iget v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->bitsPerSample:I

    int-to-short v0, v0

    invoke-direct {p0, p1, v0}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeShort(Ljava/io/DataOutputStream;S)V

    iget-object p1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    const-string v0, "data"

    invoke-direct {p0, p1, v0}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object p1, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, p2}, Lio/chirp/connect/helpers/WavAudioRecorder;->writeInt(Ljava/io/DataOutputStream;I)V

    return-void
.end method

.method public writeWav([B)V
    .locals 3

    iget-object v0, p0, Lio/chirp/connect/helpers/WavAudioRecorder;->wavOutputStream:Ljava/io/DataOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
