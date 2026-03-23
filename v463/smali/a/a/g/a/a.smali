.class public La/a/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final transient c:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/UUID;
    .annotation runtime Lcom/google/gson/a/c;
        a = "Id"
    .end annotation
.end field

.field public transient b:Z

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "RecordName"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "DataPath"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "ReportPath"
    .end annotation
.end field

.field private transient g:La/a/g/a;

.field private final transient h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, La/a/g/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, La/a/g/a/a;->a:Ljava/util/UUID;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, La/a/g/a/a;->b:Z

    const-string v2, ""

    .line 92
    iput-object v2, p0, La/a/g/a/a;->h:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "%s-record.json"

    .line 93
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, La/a/g/a/a;->d:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    .line 94
    iget-object v4, p0, La/a/g/a/a;->a:Ljava/util/UUID;

    aput-object v4, v3, v1

    const-string v4, "%s-attachment"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, La/a/g/a/a;->e:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    iget-object v3, p0, La/a/g/a/a;->a:Ljava/util/UUID;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/g/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/File;)La/a/g/a/a;
    .locals 2

    .line 247
    sget-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v1, "Reading JSON from passed file"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p0}, La/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    const-class v0, La/a/g/a/a;

    invoke-static {p0, v0}, La/a/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/g/a/a;

    return-object p0

    .line 250
    :cond_1
    :goto_0
    sget-object p0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v0, "JSON from passed file is null or empty"

    invoke-static {p0, v0}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 218
    :try_start_0
    invoke-static {p1}, La/a/b/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v1, "Passed path exist, trying delete file on database record"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    sget-object v1, La/a/g/a/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Cannot delete file: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()La/a/g/a;
    .locals 5

    .line 111
    iget-object v0, p0, La/a/g/a/a;->g:La/a/g/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, La/a/g/a/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 116
    sget-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v2, "Database record is invalid"

    invoke-static {v0, v2}, La/a/f/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 120
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, La/a/g/a/a;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, La/a/g/a/a;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, La/a/b/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 125
    :try_start_0
    sget-object v3, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v4, "Deserialization diagnostic data"

    invoke-static {v3, v4}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-class v3, La/a/g/a;

    invoke-static {v0, v3}, La/a/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/g/a;

    .line 133
    const-class v3, La/a/g/b/d;

    invoke-static {v2, v3}, La/a/b/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/g/b/d;

    iput-object v2, v0, La/a/g/a;->m:La/a/g/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 137
    sget-object v2, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v3, "Exception occurs on deserialization of diagnostic data"

    invoke-static {v2, v3, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public b()Z
    .locals 1

    .line 197
    iget-object v0, p0, La/a/g/a/a;->e:Ljava/lang/String;

    invoke-static {v0}, La/a/b/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/g/a/a;->f:Ljava/lang/String;

    .line 198
    invoke-static {v0}, La/a/b/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 2

    .line 205
    sget-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v1, "Trying delete files from database"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, La/a/g/a/a;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, La/a/g/a/a;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, La/a/g/a/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, La/a/g/a/a;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, La/a/g/a/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, La/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 228
    sget-object v0, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v1, "Trying unlock database record"

    invoke-static {v0, v1}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 230
    :try_start_0
    iput-boolean v0, p0, La/a/g/a/a;->b:Z

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, La/a/g/a/a;->g:La/a/g/a;

    .line 232
    sget-object v1, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v2, "Record unlocked"

    invoke-static {v1, v2}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 235
    :catch_0
    sget-object v1, La/a/g/a/a;->c:Ljava/lang/String;

    const-string v2, "Can not unlock record"

    invoke-static {v1, v2}, La/a/f/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
