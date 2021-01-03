# Build PLA Application artefact

Uses pla framework to create artefact using pla platform

## Inputs

### `keystore-base64`

**Required** Keystore that contains key used for signing your package. It's a base64 serilized keystore that can be crated using command
```
keytool -genkeypair -v -keystore my-relase.keystore -alias pla -keyalg RSA -keysize 2048 -validity 10000
cat my-relase.keystore | base64 --w 0
```
You should put it in your gith hub secrets and then pass it to your script as:

```
${{ secrets.KEYSTORE }}
```

### `keystore-pass`

**Required** Keystore password. 
You should put it in your gith hub secrets and then pass it to your script as:
```
${{ secrets.PASSWORD }}
```

## Outputs

### `time`

The time we greeted you.

## Example usage

Make sure that you have create your project Pla.App in a root folder

```
uses: actions/Pla-build@v1
with:
  keystore-base64: secrets.KEYSTORE
  keystore-pass:  secrets.PASSWORD

```
