.class public Lcom/roblox/client/phonenumber/PhonePrefix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PHONE_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;

.field private static final EMPTY_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;


# instance fields
.field public final countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "code"
    .end annotation
.end field

.field public final countryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "name"
    .end annotation
.end field

.field public final localizedCountryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "localizedName"
    .end annotation
.end field

.field public final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/roblox/client/phonenumber/PhonePrefix;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/roblox/client/phonenumber/PhonePrefix;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/phonenumber/PhonePrefix;->EMPTY_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;

    .line 7
    new-instance v0, Lcom/roblox/client/phonenumber/PhonePrefix;

    const-string v1, "United States"

    const-string v2, "US"

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/roblox/client/phonenumber/PhonePrefix;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/phonenumber/PhonePrefix;->DEFAULT_PHONE_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->countryName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->localizedCountryName:Ljava/lang/String;

    return-void
.end method

.method public static emptyPrefix()Lcom/roblox/client/phonenumber/PhonePrefix;
    .locals 1

    .line 46
    sget-object v0, Lcom/roblox/client/phonenumber/PhonePrefix;->EMPTY_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;

    return-object v0
.end method

.method public static getDefaultPhonePrefix()Lcom/roblox/client/phonenumber/PhonePrefix;
    .locals 1

    .line 50
    sget-object v0, Lcom/roblox/client/phonenumber/PhonePrefix;->DEFAULT_PHONE_PREFIX:Lcom/roblox/client/phonenumber/PhonePrefix;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    check-cast p1, Lcom/roblox/client/phonenumber/PhonePrefix;

    .line 36
    iget-object v2, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->countryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->countryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->localizedCountryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/roblox/client/phonenumber/PhonePrefix;->localizedCountryName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/phonenumber/PhonePrefix;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
