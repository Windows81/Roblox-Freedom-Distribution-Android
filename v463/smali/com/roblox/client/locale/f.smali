.class public Lcom/roblox/client/locale/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/roblox/client/locale/f;

.field public static b:Lcom/roblox/client/locale/f;

.field public static c:Lcom/roblox/client/locale/f;

.field public static d:Lcom/roblox/client/locale/f;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/roblox/client/locale/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/roblox/client/locale/f;

    const-string v1, "en_us"

    const-string v2, "en"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    .line 14
    new-instance v0, Lcom/roblox/client/locale/f;

    const-string v1, "es_es"

    const-string v2, "es"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/f;

    .line 15
    new-instance v0, Lcom/roblox/client/locale/f;

    const-string v1, "fr_fr"

    const-string v2, "fr"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/locale/f;->c:Lcom/roblox/client/locale/f;

    .line 16
    new-instance v0, Lcom/roblox/client/locale/f;

    const-string v1, "it_it"

    const-string v2, "it"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/locale/f;->d:Lcom/roblox/client/locale/f;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    .line 19
    sget-object v1, Lcom/roblox/client/locale/f;->a:Lcom/roblox/client/locale/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/client/locale/f;->b:Lcom/roblox/client/locale/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/client/locale/f;->c:Lcom/roblox/client/locale/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    sget-object v1, Lcom/roblox/client/locale/f;->d:Lcom/roblox/client/locale/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "de_de"

    const-string v3, "de"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "id_id"

    const-string v3, "id"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "ja_jp"

    const-string v3, "ja"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "ko_kr"

    const-string v3, "ko"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "pt_br"

    const-string v3, "pt"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "ru_ru"

    const-string v3, "ru"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "th_th"

    const-string v3, "th"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "tr_tr"

    const-string v3, "tr"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "vi_vn"

    const-string v3, "vi"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/roblox/client/locale/f;

    const-string v2, "zh_tw"

    const-string v3, "zh_TW"

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    const-string v1, "zh_CN"

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/roblox/client/locale/f;

    const-string v3, "zh_cjv"

    invoke-direct {v2, v3, v1}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/roblox/client/locale/f;

    const-string v3, "zh_cn"

    invoke-direct {v2, v3, v1}, Lcom/roblox/client/locale/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/roblox/client/locale/f;->f:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/roblox/client/locale/f;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/roblox/client/locale/f;
    .locals 3

    .line 57
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/locale/f;

    .line 58
    invoke-virtual {v1}, Lcom/roblox/client/locale/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/roblox/client/locale/f;
    .locals 5

    .line 66
    sget-object v0, Lcom/roblox/client/locale/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/locale/f;

    .line 67
    invoke-virtual {v1}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-virtual {v1}, Lcom/roblox/client/locale/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/roblox/client/locale/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/roblox/client/locale/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleValue{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/locale/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/locale/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
